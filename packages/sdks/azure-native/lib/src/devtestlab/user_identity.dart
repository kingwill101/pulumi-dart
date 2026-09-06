// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity attributes of a lab user.
class UserIdentity {
  /// Set to the app Id of the client JWT making the request.
  final pulumi.Input<String?>? appId;
  /// Set to the object Id of the client JWT making the request. Not all users have object Id. For CSP (reseller) scenarios for example, object Id is not available.
  final pulumi.Input<String?>? objectId;
  /// Set to the principal Id of the client JWT making the request. Service principal will not have the principal Id.
  final pulumi.Input<String?>? principalId;
  /// Set to the principal name / UPN of the client JWT making the request.
  final pulumi.Input<String?>? principalName;
  /// Set to the tenant ID of the client JWT making the request.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [UserIdentity].
  /// [appId] Set to the app Id of the client JWT making the request.
  /// [objectId] Set to the object Id of the client JWT making the request. Not all users have object Id. For CSP (reseller) scenarios for example, object Id is not available.
  /// [principalId] Set to the principal Id of the client JWT making the request. Service principal will not have the principal Id.
  /// [principalName] Set to the principal name / UPN of the client JWT making the request.
  /// [tenantId] Set to the tenant ID of the client JWT making the request.
  const UserIdentity({
    this.appId,
    this.objectId,
    this.principalId,
    this.principalName,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'objectId': ?objectId,
      'principalId': ?principalId,
      'principalName': ?principalName,
      'tenantId': ?tenantId,
    };
  }

  factory UserIdentity.fromMap(Map<String, dynamic> map) {
    return UserIdentity(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalName: (() { final guardedValue = map['principalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
