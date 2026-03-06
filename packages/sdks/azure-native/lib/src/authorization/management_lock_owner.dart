// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Lock owner properties.
class ManagementLockOwner {
  /// The application ID of the lock owner.
  final pulumi.Input<String>? applicationId;

  /// Creates a new [ManagementLockOwner].
  /// [applicationId] The application ID of the lock owner.
  const ManagementLockOwner({
    this.applicationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
    };
  }

  factory ManagementLockOwner.fromMap(Map<String, dynamic> map) {
    return ManagementLockOwner(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

