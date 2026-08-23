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
  const AccessRulesResponse({
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
      allowPublicOverrides: (() { final guardedValue = map['allowPublicOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      getObject: (() { final guardedValue = map['getObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
