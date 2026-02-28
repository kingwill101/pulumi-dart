// ignore_for_file: unused_element, unnecessary_cast

/// ParameterMetadataEnumOption specifies the option shown in the enum form.
class ParameterMetadataEnumOptionResponse {
  /// Optional. The description to display for the enum option.
  final String description;

  /// Optional. The label to display for the enum option.
  final String label;

  /// The value of the enum option.
  final String value;

  /// Creates a new [ParameterMetadataEnumOptionResponse].
  /// [description] Optional. The description to display for the enum option.
  /// [label] Optional. The label to display for the enum option.
  /// [value] The value of the enum option.
  ParameterMetadataEnumOptionResponse({
    required this.description,
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['label'] = label;
    map['value'] = value;
    return map;
  }

  factory ParameterMetadataEnumOptionResponse.fromMap(
      Map<String, dynamic> map) {
    return ParameterMetadataEnumOptionResponse(
      description: map['description'] as String,
      label: map['label'] as String,
      value: map['value'] as String,
    );
  }
}
