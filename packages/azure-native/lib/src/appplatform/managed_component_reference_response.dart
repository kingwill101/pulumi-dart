// ignore_for_file: unused_element, unnecessary_cast


/// A reference to the managed component like Config Server.
class ManagedComponentReferenceResponse {
  /// Resource Id of the managed component
  final String resourceId;

  /// Creates a new [ManagedComponentReferenceResponse].
  /// [resourceId] Resource Id of the managed component
  ManagedComponentReferenceResponse({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory ManagedComponentReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ManagedComponentReferenceResponse(
      resourceId: map['resourceId'] as String,
    );
  }
}

