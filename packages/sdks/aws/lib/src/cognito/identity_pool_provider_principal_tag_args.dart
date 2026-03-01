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
  final pulumi.Input<Map<String, String>>? principalTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// use default (username and clientID) attribute mappings.
  final pulumi.Input<bool>? useDefaults;

  /// Creates a new [IdentityPoolProviderPrincipalTagArgs].
  /// [identityPoolId] An identity pool ID.
  /// [identityProviderName] The name of the identity provider.
  /// [principalTags] String to string map of variables.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [useDefaults] use default (username and clientID) attribute mappings.
  IdentityPoolProviderPrincipalTagArgs({
    required pulumi.Output<String> identityPoolId,
    required pulumi.Output<String> identityProviderName,
    pulumi.Output<Map<String, String>>? principalTags,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? useDefaults,
  }) :
      identityPoolId = pulumi.Input.asInput<String>(identityPoolId),
      identityProviderName = pulumi.Input.asInput<String>(identityProviderName),
      principalTags = pulumi.Input.asOptionalInput<Map<String, String>>(principalTags),
      region = pulumi.Input.asOptionalInput<String>(region),
      useDefaults = pulumi.Input.asOptionalInput<bool>(useDefaults);

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
      identityPoolId: pulumi.Output.create<String>(map['identityPoolId'] as String),
      identityProviderName: pulumi.Output.create<String>(map['identityProviderName'] as String),
      principalTags: map['principalTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['principalTags'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      useDefaults: map['useDefaults'] == null ? null : pulumi.Output.create<bool>(map['useDefaults'] as bool),
    );
  }
}

