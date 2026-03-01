// ignore_for_file: unused_element, unnecessary_cast


class GetVariablesBool {
  /// The description of the Automation Variable.
  final String description;
  /// Specifies if the Automation Variable is encrypted.
  final bool encrypted;
  final String id;
  /// The name of the Automation Variable.
  final String name;
  /// The value of the Automation Variable.
  final bool value;

  /// Creates a new [GetVariablesBool].
  /// [description] The description of the Automation Variable.
  /// [encrypted] Specifies if the Automation Variable is encrypted.
  /// [id] Required.
  /// [name] The name of the Automation Variable.
  /// [value] The value of the Automation Variable.
  GetVariablesBool({
    required this.description,
    required this.encrypted,
    required this.id,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'encrypted': encrypted,
      'id': id,
      'name': name,
      'value': value,
    };
  }

  factory GetVariablesBool.fromMap(Map<String, dynamic> map) {
    return GetVariablesBool(
      description: map['description'] as String,
      encrypted: map['encrypted'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      value: map['value'] as bool,
    );
  }
}

