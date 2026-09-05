// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_identity_pool_provider_principal_tag_identity_pool_provider_principal_tag_args_doc}
/// The set of arguments for IdentityPoolProviderPrincipalTag.
/// {@endtemplate}
/// {@macro pulumi_cognito_identity_pool_provider_principal_tag_identity_pool_provider_principal_tag_args_doc}
class IdentityPoolProviderPrincipalTagArgs {
  /// An identity pool ID.
  final pulumi.Input<String> identityPoolId;
  /// The name of the identity provider.
  final pulumi.Input<String> identityProviderName;
  /// String to string map of variables.
  final pulumi.Input<Map<String, String>?>? principalTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// use default (username and clientID) attribute mappings.
  final pulumi.Input<bool?>? useDefaults;

  /// Creates a new [IdentityPoolProviderPrincipalTagArgs].
  /// [identityPoolId] An identity pool ID.
  /// [identityProviderName] The name of the identity provider.
  /// [principalTags] String to string map of variables.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [useDefaults] use default (username and clientID) attribute mappings.
  const IdentityPoolProviderPrincipalTagArgs({
    required this.identityPoolId,
    required this.identityProviderName,
    this.principalTags,
    this.region,
    this.useDefaults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityPoolId': identityPoolId,
      'identityProviderName': identityProviderName,
      'principalTags': ?principalTags,
      'region': ?region,
      'useDefaults': ?useDefaults,
    };
  }

  factory IdentityPoolProviderPrincipalTagArgs.fromMap(Map<String, dynamic> map) {
    return IdentityPoolProviderPrincipalTagArgs(
      identityPoolId: pulumi.Input.fromValue(map['identityPoolId'] as String),
      identityProviderName: pulumi.Input.fromValue(map['identityProviderName'] as String),
      principalTags: (() { final guardedValue = map['principalTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useDefaults: (() { final guardedValue = map['useDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
