// ignore_for_file: unused_element, unnecessary_cast


/// A reference to the APM
class ApmReference {
  /// Resource Id of the APM
  final String resourceId;

  /// Creates a new [ApmReference].
  /// [resourceId] Resource Id of the APM
  ApmReference({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory ApmReference.fromMap(Map<String, dynamic> map) {
    return ApmReference(
      resourceId: map['resourceId'] as String,
    );
  }
}

