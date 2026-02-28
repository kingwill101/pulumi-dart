// ignore_for_file: unused_element, unnecessary_cast

class FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  /// Creates a new [FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue].
  /// [values] The strings in the list.
  FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue.fromMap(
      Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
