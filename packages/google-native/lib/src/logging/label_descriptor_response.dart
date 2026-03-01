// ignore_for_file: unused_element, unnecessary_cast

/// A description of a label.
class LabelDescriptorResponse {
  /// A human-readable description for the label.
  final String description;

  /// The label key.
  final String key;

  /// The type of data that can be assigned to the label.
  final String valueType;

  /// Creates a new [LabelDescriptorResponse].
  /// [description] A human-readable description for the label.
  /// [key] The label key.
  /// [valueType] The type of data that can be assigned to the label.
  LabelDescriptorResponse({
    required this.description,
    required this.key,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'key': key,
      'valueType': valueType,
    };
  }

  factory LabelDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return LabelDescriptorResponse(
      description: map['description'] as String,
      key: map['key'] as String,
      valueType: map['valueType'] as String,
    );
  }
}
