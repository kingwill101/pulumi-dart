// ignore_for_file: unused_element, unnecessary_cast


/// Lock owner properties.
class ManagementLockOwner {
  /// The application ID of the lock owner.
  final String? applicationId;

  /// Creates a new [ManagementLockOwner].
  /// [applicationId] The application ID of the lock owner.
  ManagementLockOwner({
    this.applicationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
    };
  }

  factory ManagementLockOwner.fromMap(Map<String, dynamic> map) {
    return ManagementLockOwner(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
    );
  }
}

