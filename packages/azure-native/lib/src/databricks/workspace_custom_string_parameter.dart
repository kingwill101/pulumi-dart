// ignore_for_file: unused_element, unnecessary_cast


/// The Value.
class WorkspaceCustomStringParameter {
  /// The value which should be used for this field.
  final String value;

  /// Creates a new [WorkspaceCustomStringParameter].
  /// [value] The value which should be used for this field.
  WorkspaceCustomStringParameter({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory WorkspaceCustomStringParameter.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomStringParameter(
      value: map['value'] as String,
    );
  }
}

