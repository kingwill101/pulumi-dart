// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user owned AML workspace for Cognitive Services account.
class UserOwnedAmlWorkspace {
  /// Identity Client id of a AML workspace resource.
  final pulumi.Input<String>? identityClientId;
  /// Full resource id of a AML workspace resource.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [UserOwnedAmlWorkspace].
  /// [identityClientId] Identity Client id of a AML workspace resource.
  /// [resourceId] Full resource id of a AML workspace resource.
  UserOwnedAmlWorkspace({
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
      identityClientId: map['identityClientId'] == null ? null : (map['identityClientId']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

