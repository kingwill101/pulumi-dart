// ignore_for_file: unused_element, unnecessary_cast

class FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValue {
  /// The strings in the list.
  final List<String> values;

  /// Creates a new [FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValue].
  /// [values] The strings in the list.
  FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValue(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
