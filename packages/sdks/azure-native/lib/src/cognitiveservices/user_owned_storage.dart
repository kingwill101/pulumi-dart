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
  UserOwnedStorage({
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
      identityClientId: map['identityClientId'] == null ? null : (map['identityClientId']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

