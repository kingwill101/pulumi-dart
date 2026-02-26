// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateContainerBuildInfo {
  /// Entry point of the function when the image is a Cloud Run function.
  final String functionTarget;

  /// Source code location of the image.
  final String sourceLocation;

  GetServiceTemplateContainerBuildInfo({
    required this.functionTarget,
    required this.sourceLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionTarget'] = functionTarget;
    map['sourceLocation'] = sourceLocation;
    return map;
  }

  factory GetServiceTemplateContainerBuildInfo.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateContainerBuildInfo(
      functionTarget: map['functionTarget'] as String,
      sourceLocation: map['sourceLocation'] as String,
    );
  }
}
