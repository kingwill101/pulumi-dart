// ignore_for_file: unused_element, unnecessary_cast


/// Parent resource information.
class ManagedByInfoResponse {
  /// Resource ID of the resource managing the volume, this is a restricted field and can only be set for internal use.
  final String? resourceId;

  /// Creates a new [ManagedByInfoResponse].
  /// [resourceId] Resource ID of the resource managing the volume, this is a restricted field and can only be set for internal use.
  ManagedByInfoResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory ManagedByInfoResponse.fromMap(Map<String, dynamic> map) {
    return ManagedByInfoResponse(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

