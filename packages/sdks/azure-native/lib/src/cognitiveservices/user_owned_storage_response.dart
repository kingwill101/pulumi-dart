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
  UserOwnedStorageResponse({this.identityClientId, this.resourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'resourceId': ?resourceId,
    };
  }

  factory UserOwnedStorageResponse.fromMap(Map<String, dynamic> map) {
    return UserOwnedStorageResponse(
      identityClientId: (() {
        final guardedValue = map['identityClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
