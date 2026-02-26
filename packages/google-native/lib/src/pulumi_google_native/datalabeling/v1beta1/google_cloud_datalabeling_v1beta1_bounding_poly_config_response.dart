// ignore_for_file: unused_element, unnecessary_cast

/// Config for image bounding poly (and bounding box) human labeling task.
class GoogleCloudDatalabelingV1beta1BoundingPolyConfigResponse {
  /// Annotation spec set resource name.
  final String annotationSpecSet;

  /// Optional. Instruction message showed on contributors UI.
  final String instructionMessage;

  GoogleCloudDatalabelingV1beta1BoundingPolyConfigResponse({
    required this.annotationSpecSet,
    required this.instructionMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotationSpecSet'] = annotationSpecSet;
    map['instructionMessage'] = instructionMessage;
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1BoundingPolyConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1BoundingPolyConfigResponse(
      annotationSpecSet: map['annotationSpecSet'] as String,
      instructionMessage: map['instructionMessage'] as String,
    );
  }
}
