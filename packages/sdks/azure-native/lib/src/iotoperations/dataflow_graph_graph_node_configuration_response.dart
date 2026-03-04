// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowGraph graph node configuration.
class DataflowGraphGraphNodeConfigurationResponse {
  /// Key of the configuration.
  final pulumi.Input<String> key;

  /// Value of the configuration.
  final pulumi.Input<String> value;

  /// Creates a new [DataflowGraphGraphNodeConfigurationResponse].
  /// [key] Key of the configuration.
  /// [value] Value of the configuration.
  DataflowGraphGraphNodeConfigurationResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory DataflowGraphGraphNodeConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataflowGraphGraphNodeConfigurationResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
