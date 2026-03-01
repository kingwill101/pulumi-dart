// ignore_for_file: unused_element, unnecessary_cast


/// The value which should be used for this field.
class WorkspaceCustomBooleanParameterResponse {
  /// The type of variable that this is
  final String type;
  /// The value which should be used for this field.
  final bool value;

  /// Creates a new [WorkspaceCustomBooleanParameterResponse].
  /// [type] The type of variable that this is
  /// [value] The value which should be used for this field.
  WorkspaceCustomBooleanParameterResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory WorkspaceCustomBooleanParameterResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomBooleanParameterResponse(
      type: map['type'] as String,
      value: map['value'] as bool,
    );
  }
}

