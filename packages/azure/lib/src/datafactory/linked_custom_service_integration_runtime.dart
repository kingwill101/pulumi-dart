// ignore_for_file: unused_element, unnecessary_cast


class LinkedCustomServiceIntegrationRuntime {
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final String name;
  /// A map of parameters to associate with the integration runtime.
  final Map<String, String>? parameters;

  /// Creates a new [LinkedCustomServiceIntegrationRuntime].
  /// [name] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [parameters] A map of parameters to associate with the integration runtime.
  LinkedCustomServiceIntegrationRuntime({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory LinkedCustomServiceIntegrationRuntime.fromMap(Map<String, dynamic> map) {
    return LinkedCustomServiceIntegrationRuntime(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

