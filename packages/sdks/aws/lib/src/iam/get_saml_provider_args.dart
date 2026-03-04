// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_saml_provider_get_saml_provider_args_doc}
/// Arguments for getSamlProvider.
/// {@endtemplate}
/// {@macro pulumi_iam_get_saml_provider_get_saml_provider_args_doc}
class GetSamlProviderArgs {
  /// ARN assigned by AWS for the provider.
  final pulumi.Input<String> arn;

  /// Tags attached to the SAML provider.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSamlProviderArgs].
  /// [arn] ARN assigned by AWS for the provider.
  /// [tags] Tags attached to the SAML provider.
  GetSamlProviderArgs({required this.arn, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'tags': ?tags};
  }

  factory GetSamlProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetSamlProviderArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
