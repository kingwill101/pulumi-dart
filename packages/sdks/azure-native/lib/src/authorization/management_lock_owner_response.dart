// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Lock owner properties.
class ManagementLockOwnerResponse {
  /// The application ID of the lock owner.
  final pulumi.Input<String>? applicationId;

  /// Creates a new [ManagementLockOwnerResponse].
  /// [applicationId] The application ID of the lock owner.
  ManagementLockOwnerResponse({
    this.applicationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
    };
  }

  factory ManagementLockOwnerResponse.fromMap(Map<String, dynamic> map) {
    return ManagementLockOwnerResponse(
      applicationId: map['applicationId'] == null ? null : (map['applicationId']! as String).input(),
    );
  }
}

