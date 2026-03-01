// ignore_for_file: unused_element, unnecessary_cast


/// DataflowGraph graph node configuration.
class DataflowGraphGraphNodeConfiguration {
  /// Key of the configuration.
  final String key;
  /// Value of the configuration.
  final String value;

  /// Creates a new [DataflowGraphGraphNodeConfiguration].
  /// [key] Key of the configuration.
  /// [value] Value of the configuration.
  DataflowGraphGraphNodeConfiguration({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory DataflowGraphGraphNodeConfiguration.fromMap(Map<String, dynamic> map) {
    return DataflowGraphGraphNodeConfiguration(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

