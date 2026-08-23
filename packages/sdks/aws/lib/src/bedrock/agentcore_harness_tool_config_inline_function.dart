// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessToolConfigInlineFunction {
  /// Description of the inline function.
  final pulumi.Input<String> description;
  /// JSON string defining the input schema for the function.
  final pulumi.Input<String> inputSchema;

  /// Creates a new [AgentcoreHarnessToolConfigInlineFunction].
  /// [description] Description of the inline function.
  /// [inputSchema] JSON string defining the input schema for the function.
  const AgentcoreHarnessToolConfigInlineFunction({
    required this.description,
    required this.inputSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'inputSchema': inputSchema,
    };
  }

  factory AgentcoreHarnessToolConfigInlineFunction.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessToolConfigInlineFunction(
      description: pulumi.Input.fromValue(map['description'] as String),
      inputSchema: pulumi.Input.fromValue(map['inputSchema'] as String),
    );
  }
}
