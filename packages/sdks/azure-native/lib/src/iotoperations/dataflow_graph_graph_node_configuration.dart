// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowGraph graph node configuration.
class DataflowGraphGraphNodeConfiguration {
  /// Key of the configuration.
  final pulumi.Input<String> key;

  /// Value of the configuration.
  final pulumi.Input<String> value;

  /// Creates a new [DataflowGraphGraphNodeConfiguration].
  /// [key] Key of the configuration.
  /// [value] Value of the configuration.
  DataflowGraphGraphNodeConfiguration({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory DataflowGraphGraphNodeConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataflowGraphGraphNodeConfiguration(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
