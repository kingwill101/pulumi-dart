// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user owned storage for Cognitive Services account.
class UserOwnedStorage {
  final pulumi.Input<String>? identityClientId;
  /// Full resource id of a Microsoft.Storage resource.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [UserOwnedStorage].
  /// [identityClientId] Optional.
  /// [resourceId] Full resource id of a Microsoft.Storage resource.
  const UserOwnedStorage({
    this.identityClientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'resourceId': ?resourceId,
    };
  }

  factory UserOwnedStorage.fromMap(Map<String, dynamic> map) {
    return UserOwnedStorage(
      identityClientId: (() { final guardedValue = map['identityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

