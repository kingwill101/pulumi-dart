// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user owned AML account for Cognitive Services account.
class UserOwnedAmlWorkspace {
  /// Identity Client id of a AML account resource.
  final pulumi.Input<String>? identityClientId;
  /// Full resource id of a AML account resource.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [UserOwnedAmlWorkspace].
  /// [identityClientId] Identity Client id of a AML account resource.
  /// [resourceId] Full resource id of a AML account resource.
  const UserOwnedAmlWorkspace({
    this.identityClientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'resourceId': ?resourceId,
    };
  }

  factory UserOwnedAmlWorkspace.fromMap(Map<String, dynamic> map) {
    return UserOwnedAmlWorkspace(
      identityClientId: (() { final guardedValue = map['identityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
