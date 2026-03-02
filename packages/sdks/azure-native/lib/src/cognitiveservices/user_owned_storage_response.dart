// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user owned storage for Cognitive Services account.
class UserOwnedStorageResponse {
  final pulumi.Input<String>? identityClientId;
  /// Full resource id of a Microsoft.Storage resource.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [UserOwnedStorageResponse].
  /// [identityClientId] Optional.
  /// [resourceId] Full resource id of a Microsoft.Storage resource.
  UserOwnedStorageResponse({
    this.identityClientId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'resourceId': ?resourceId,
    };
  }

  factory UserOwnedStorageResponse.fromMap(Map<String, dynamic> map) {
    return UserOwnedStorageResponse(
      identityClientId: map['identityClientId'] == null ? null : (map['identityClientId']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

