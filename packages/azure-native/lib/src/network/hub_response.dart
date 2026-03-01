// ignore_for_file: unused_element, unnecessary_cast


/// Hub Item.
class HubResponse {
  /// Resource Id.
  final String? resourceId;
  /// Resource Type.
  final String? resourceType;

  /// Creates a new [HubResponse].
  /// [resourceId] Resource Id.
  /// [resourceType] Resource Type.
  HubResponse({
    this.resourceId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
    };
  }

  factory HubResponse.fromMap(Map<String, dynamic> map) {
    return HubResponse(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}

