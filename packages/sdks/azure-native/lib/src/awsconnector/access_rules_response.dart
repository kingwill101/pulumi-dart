// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AccessRules
class AccessRulesResponse {
  /// A Boolean value that indicates whether the access control list (ACL) permissions that are applied to individual objects override the getObject option that is currently specified.
  final pulumi.Input<bool>? allowPublicOverrides;
  /// Specifies the anonymous access to all objects in a bucket.
  final pulumi.Input<String>? getObject;

  /// Creates a new [AccessRulesResponse].
  /// [allowPublicOverrides] A Boolean value that indicates whether the access control list (ACL) permissions that are applied to individual objects override the getObject option that is currently specified.
  /// [getObject] Specifies the anonymous access to all objects in a bucket.
  AccessRulesResponse({
    this.allowPublicOverrides,
    this.getObject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPublicOverrides': ?allowPublicOverrides,
      'getObject': ?getObject,
    };
  }

  factory AccessRulesResponse.fromMap(Map<String, dynamic> map) {
    return AccessRulesResponse(
      allowPublicOverrides: map['allowPublicOverrides'] == null ? null : (map['allowPublicOverrides'] as bool).input(),
      getObject: map['getObject'] == null ? null : (map['getObject'] as String).input(),
    );
  }
}

