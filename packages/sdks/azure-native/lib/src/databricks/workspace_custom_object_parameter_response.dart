// ignore_for_file: unused_element, unnecessary_cast


/// The value which should be used for this field.
class WorkspaceCustomObjectParameterResponse {
  /// The type of variable that this is
  final String type;
  /// The value which should be used for this field.
  final dynamic value;

  /// Creates a new [WorkspaceCustomObjectParameterResponse].
  /// [type] The type of variable that this is
  /// [value] The value which should be used for this field.
  WorkspaceCustomObjectParameterResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory WorkspaceCustomObjectParameterResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomObjectParameterResponse(
      type: map['type'] as String,
      value: map['value'],
    );
  }
}

