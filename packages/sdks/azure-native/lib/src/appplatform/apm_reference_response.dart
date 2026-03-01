// ignore_for_file: unused_element, unnecessary_cast


/// A reference to the APM
class ApmReferenceResponse {
  /// Resource Id of the APM
  final String resourceId;

  /// Creates a new [ApmReferenceResponse].
  /// [resourceId] Resource Id of the APM
  ApmReferenceResponse({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory ApmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ApmReferenceResponse(
      resourceId: map['resourceId'] as String,
    );
  }
}

