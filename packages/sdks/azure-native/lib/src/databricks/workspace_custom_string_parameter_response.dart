// ignore_for_file: unused_element, unnecessary_cast


/// The Value.
class WorkspaceCustomStringParameterResponse {
  /// The type of variable that this is
  final String type;
  /// The value which should be used for this field.
  final String value;

  /// Creates a new [WorkspaceCustomStringParameterResponse].
  /// [type] The type of variable that this is
  /// [value] The value which should be used for this field.
  WorkspaceCustomStringParameterResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory WorkspaceCustomStringParameterResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomStringParameterResponse(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

