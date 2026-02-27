// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for IdentityPoolProviderPrincipalTag.
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

  IdentityPoolProviderPrincipalTagArgs({
    required this.identityPoolId,
    required this.identityProviderName,
    this.principalTags,
    this.region,
    this.useDefaults,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identityPoolId'] = identityPoolId;
    map['identityProviderName'] = identityProviderName;
    final principalTagsValue = principalTags;
    if (principalTagsValue != null) {
      map['principalTags'] = principalTagsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final useDefaultsValue = useDefaults;
    if (useDefaultsValue != null) {
      map['useDefaults'] = useDefaultsValue;
    }
    return map;
  }

  factory IdentityPoolProviderPrincipalTagArgs.fromMap(
      Map<String, dynamic> map) {
    return IdentityPoolProviderPrincipalTagArgs(
      identityPoolId: pulumi.Input.asInput<String>(map['identityPoolId']),
      identityProviderName:
          pulumi.Input.asInput<String>(map['identityProviderName']),
      principalTags: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['principalTags']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      useDefaults: pulumi.Input.asOptionalInput<bool>(map['useDefaults']),
    );
  }
}
