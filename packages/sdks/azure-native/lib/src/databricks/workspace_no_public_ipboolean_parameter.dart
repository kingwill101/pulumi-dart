// ignore_for_file: unused_element, unnecessary_cast


/// The value which should be used for this field.
class WorkspaceNoPublicIPBooleanParameter {
  /// The value which should be used for this field.
  final bool value;

  /// Creates a new [WorkspaceNoPublicIPBooleanParameter].
  /// [value] The value which should be used for this field.
  WorkspaceNoPublicIPBooleanParameter({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory WorkspaceNoPublicIPBooleanParameter.fromMap(Map<String, dynamic> map) {
    return WorkspaceNoPublicIPBooleanParameter(
      value: map['value'] as bool,
    );
  }
}

