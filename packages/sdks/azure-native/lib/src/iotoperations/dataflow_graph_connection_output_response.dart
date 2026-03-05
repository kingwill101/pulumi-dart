// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowGraph DataflowGraphNode Connection Output.
class DataflowGraphConnectionOutputResponse {
  /// Name of the destination node.
  final pulumi.Input<String> name;

  /// Creates a new [DataflowGraphConnectionOutputResponse].
  /// [name] Name of the destination node.
  DataflowGraphConnectionOutputResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DataflowGraphConnectionOutputResponse.fromMap(Map<String, dynamic> map) {
    return DataflowGraphConnectionOutputResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

