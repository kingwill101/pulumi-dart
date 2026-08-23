import 'package:pulumi/src/resource/custom_resource.dart';

import '../constants.dart';
import '../deployment/models.dart' as models;
import '../input.dart';

/// {@template pulumi.provider_resource.summary}
/// A configured provider instance for a Pulumi package.
///
/// Provider resources use the type token `pulumi:providers:<package>` and can
/// be passed via resource/invoke options to select explicit provider behavior.
///
/// ## Example
/// ```dart
/// final randomProvider = ProviderResource('random', 'default', {}, null);
/// ```
/// {@endtemplate}
///
class ProviderResource extends CustomResource {
  final String package;
  String? registrationId;

  ProviderResource(
    this.package,
    String name,
    Inputs? args,
    CustomResourceOptions? options, {
    models.RegisterPackageRequest? registerPackageRequest,
    List<String> additionalSecretOutputs = const [],
  }) : super(
         'pulumi:providers:$package',
         name,
         args ?? {},
         options ?? CustomResourceOptions(),
         registerPackageRequest: registerPackageRequest,
         additionalSecretOutputs: additionalSecretOutputs,
       );

  ProviderResource.reference(this.package, String urn, {String? id})
    : super(
        'pulumi:providers:$package',
        _nameFromUrn(urn),
        {},
        CustomResourceOptions(),
        dependency: true,
      ) {
    resolveUrn(urn);

    final hasKnownID =
        id != null && id.isNotEmpty && !Constants.isUnknownSentinel(id);
    resolveId(hasKnownID ? id : null, isKnown: hasKnownID);
    registrationId = "$urn::${hasKnownID ? id : Constants.unknownValue}";
  }

  /// Returns the provider registration identifier (`<urn>::<id>`).
  static Future<String?> register(ProviderResource? providerResource) async {
    if (providerResource == null) return null;

    if (providerResource.registrationId == null) {
      final urn = await providerResource.urn.getValue();
      final idData = await providerResource.id.getData();
      final id = idData.isKnown
          ? ((idData.value != null && idData.value!.isNotEmpty)
                ? idData.value!
                : Constants.unknownValue)
          : Constants.unknownValue;
      providerResource.registrationId = "$urn::$id";
    }

    return providerResource.registrationId;
  }

  static String _nameFromUrn(String urn) {
    final parts = urn.split("::");
    if (parts.length >= 4) {
      return parts.last;
    }
    return "provider";
  }
}
