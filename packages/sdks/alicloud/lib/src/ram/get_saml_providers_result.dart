// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_saml_providers_provider.dart';

/// Result data returned by getSamlProviders.
class GetSamlProvidersResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of SAML Provider names.
  final List<String> names;
  final String? outputFile;
  /// A list of Ram Saml Providers. Each element contains the following attributes:
  final List<GetSamlProvidersProvider> providers;

  /// Creates a new [GetSamlProvidersResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of SAML Provider names.
  /// [outputFile] Optional.
  /// [providers] A list of Ram Saml Providers. Each element contains the following attributes:
  GetSamlProvidersResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.providers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'providers': pulumi.Input.encodeList<GetSamlProvidersProvider, Map<String, dynamic>>(providers, (value) => value.toMap()),
    };
  }

  factory GetSamlProvidersResult.fromMap(Map<String, dynamic> map) {
    return GetSamlProvidersResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      providers: pulumi.Input.decodeList<GetSamlProvidersProvider>(map['providers'], (value) => GetSamlProvidersProvider.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

