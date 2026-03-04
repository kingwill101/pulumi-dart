// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowGraph DataflowGraphNode Connection Output.
class DataflowGraphConnectionOutput {
  /// Name of the destination node.
  final pulumi.Input<String> name;

  /// Creates a new [DataflowGraphConnectionOutput].
  /// [name] Name of the destination node.
  DataflowGraphConnectionOutput({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory DataflowGraphConnectionOutput.fromMap(Map<String, dynamic> map) {
    return DataflowGraphConnectionOutput(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
