// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IdentityPoolProviderPrincipalTag resources.
class IdentityPoolProviderPrincipalTagState {
  /// An identity pool ID.
  final pulumi.Input<String>? identityPoolId;
  /// The name of the identity provider.
  final pulumi.Input<String>? identityProviderName;
  /// String to string map of variables.
  final pulumi.Input<Map<String, String>>? principalTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// use default (username and clientID) attribute mappings.
  final pulumi.Input<bool>? useDefaults;

  /// Creates a new [IdentityPoolProviderPrincipalTagState].
  /// [identityPoolId] An identity pool ID.
  /// [identityProviderName] The name of the identity provider.
  /// [principalTags] String to string map of variables.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [useDefaults] use default (username and clientID) attribute mappings.
  IdentityPoolProviderPrincipalTagState({
    pulumi.Output<String>? identityPoolId,
    pulumi.Output<String>? identityProviderName,
    pulumi.Output<Map<String, String>>? principalTags,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? useDefaults,
  }) :
      identityPoolId = pulumi.Input.asOptionalInput<String>(identityPoolId),
      identityProviderName = pulumi.Input.asOptionalInput<String>(identityProviderName),
      principalTags = pulumi.Input.asOptionalInput<Map<String, String>>(principalTags),
      region = pulumi.Input.asOptionalInput<String>(region),
      useDefaults = pulumi.Input.asOptionalInput<bool>(useDefaults);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityPoolId': ?identityPoolId,
      'identityProviderName': ?identityProviderName,
      'principalTags': ?principalTags,
      'region': ?region,
      'useDefaults': ?useDefaults,
    };
  }

  factory IdentityPoolProviderPrincipalTagState.fromMap(Map<String, dynamic> map) {
    return IdentityPoolProviderPrincipalTagState(
      identityPoolId: map['identityPoolId'] == null ? null : pulumi.Output.create<String>(map['identityPoolId'] as String),
      identityProviderName: map['identityProviderName'] == null ? null : pulumi.Output.create<String>(map['identityProviderName'] as String),
      principalTags: map['principalTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['principalTags'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      useDefaults: map['useDefaults'] == null ? null : pulumi.Output.create<bool>(map['useDefaults'] as bool),
    );
  }
}

