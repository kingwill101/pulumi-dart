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
  GetSamlProviderArgs({required String arn, Map<String, String>? tags})
    : arn = pulumi.Input.asInput<String>(arn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'tags': ?tags};
  }

  factory GetSamlProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetSamlProviderArgs(
      arn: map['arn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
