// ignore_for_file: unused_element, unnecessary_cast


/// DataflowGraph graph node configuration.
class DataflowGraphGraphNodeConfigurationResponse {
  /// Key of the configuration.
  final String key;
  /// Value of the configuration.
  final String value;

  /// Creates a new [DataflowGraphGraphNodeConfigurationResponse].
  /// [key] Key of the configuration.
  /// [value] Value of the configuration.
  DataflowGraphGraphNodeConfigurationResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory DataflowGraphGraphNodeConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphGraphNodeConfigurationResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

