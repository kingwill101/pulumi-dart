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
    this.identityPoolId,
    this.identityProviderName,
    this.principalTags,
    this.region,
    this.useDefaults,
  });

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
      identityPoolId: map['identityPoolId'] == null ? null : ((map['identityPoolId'] as String).input()).input(),
      identityProviderName: map['identityProviderName'] == null ? null : ((map['identityProviderName'] as String).input()).input(),
      principalTags: map['principalTags'] == null ? null : (((map['principalTags'] as Map).cast<String, String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      useDefaults: map['useDefaults'] == null ? null : ((map['useDefaults'] as bool).input()).input(),
    );
  }
}

