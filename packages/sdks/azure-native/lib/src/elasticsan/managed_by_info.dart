// ignore_for_file: unused_element, unnecessary_cast


/// Parent resource information.
class ManagedByInfo {
  /// Resource ID of the resource managing the volume, this is a restricted field and can only be set for internal use.
  final String? resourceId;

  /// Creates a new [ManagedByInfo].
  /// [resourceId] Resource ID of the resource managing the volume, this is a restricted field and can only be set for internal use.
  ManagedByInfo({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory ManagedByInfo.fromMap(Map<String, dynamic> map) {
    return ManagedByInfo(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

