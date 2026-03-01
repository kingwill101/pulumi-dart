// ignore_for_file: unused_element, unnecessary_cast

/// Config for image bounding poly (and bounding box) human labeling task.
class GoogleCloudDatalabelingV1beta1BoundingPolyConfigResponse {
  /// Annotation spec set resource name.
  final String annotationSpecSet;

  /// Optional. Instruction message showed on contributors UI.
  final String instructionMessage;

  /// Creates a new [GoogleCloudDatalabelingV1beta1BoundingPolyConfigResponse].
  /// [annotationSpecSet] Annotation spec set resource name.
  /// [instructionMessage] Optional. Instruction message showed on contributors UI.
  GoogleCloudDatalabelingV1beta1BoundingPolyConfigResponse({
    required this.annotationSpecSet,
    required this.instructionMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationSpecSet': annotationSpecSet,
      'instructionMessage': instructionMessage,
    };
  }

  factory GoogleCloudDatalabelingV1beta1BoundingPolyConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatalabelingV1beta1BoundingPolyConfigResponse(
      annotationSpecSet: map['annotationSpecSet'] as String,
      instructionMessage: map['instructionMessage'] as String,
    );
  }
}
