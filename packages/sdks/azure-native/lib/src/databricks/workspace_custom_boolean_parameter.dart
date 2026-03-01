// ignore_for_file: unused_element, unnecessary_cast


/// The value which should be used for this field.
class WorkspaceCustomBooleanParameter {
  /// The value which should be used for this field.
  final bool value;

  /// Creates a new [WorkspaceCustomBooleanParameter].
  /// [value] The value which should be used for this field.
  WorkspaceCustomBooleanParameter({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory WorkspaceCustomBooleanParameter.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomBooleanParameter(
      value: map['value'] as bool,
    );
  }
}

