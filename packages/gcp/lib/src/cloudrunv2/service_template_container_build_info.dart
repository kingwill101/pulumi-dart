// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateContainerBuildInfo {
  /// Entry point of the function when the image is a Cloud Run function.
  final String? functionTarget;

  /// Source code location of the image.
  final String? sourceLocation;

  /// Creates a new [ServiceTemplateContainerBuildInfo].
  /// [functionTarget] Entry point of the function when the image is a Cloud Run function.
  /// [sourceLocation] Source code location of the image.
  ServiceTemplateContainerBuildInfo({
    this.functionTarget,
    this.sourceLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final functionTargetValue = functionTarget;
    if (functionTargetValue != null) {
      map['functionTarget'] = functionTargetValue;
    }
    final sourceLocationValue = sourceLocation;
    if (sourceLocationValue != null) {
      map['sourceLocation'] = sourceLocationValue;
    }
    return map;
  }

  factory ServiceTemplateContainerBuildInfo.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerBuildInfo(
      functionTarget: map['functionTarget'] == null
          ? null
          : map['functionTarget'] as String,
      sourceLocation: map['sourceLocation'] == null
          ? null
          : map['sourceLocation'] as String,
    );
  }
}
