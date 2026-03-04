// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_api_explorer_api_mcp_server_prompt_argument.dart';

class OpenApiExplorerApiMcpServerPrompt {
  /// Parameters for the prompt. See `arguments` below.
  final pulumi.Input<List<OpenApiExplorerApiMcpServerPromptArgument>>?
  arguments;

  /// Full content of the prompt, supporting dynamic parameters. Parameters must be defined in Arguments, using the format {{ARG}}, where ARG supports English characters. Example: My name is: {{name}}.
  final pulumi.Input<String>? content;

  /// Description of the prompt parameter.
  final pulumi.Input<String>? description;

  /// Name of the prompt parameter.
  final pulumi.Input<String>? name;

  /// Creates a new [OpenApiExplorerApiMcpServerPrompt].
  /// [arguments] Parameters for the prompt. See `arguments` below.
  /// [content] Full content of the prompt, supporting dynamic parameters. Parameters must be defined in Arguments, using the format {{ARG}}, where ARG supports English characters. Example: My name is: {{name}}.
  /// [description] Description of the prompt parameter.
  /// [name] Name of the prompt parameter.
  OpenApiExplorerApiMcpServerPrompt({
    this.arguments,
    this.content,
    this.description,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments':
          ?pulumi.Input.mapOptionalInputValue<
            List<OpenApiExplorerApiMcpServerPromptArgument>,
            List<Map<String, dynamic>>
          >(
            arguments,
            (value) =>
                pulumi.Input.encodeList<
                  OpenApiExplorerApiMcpServerPromptArgument,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'content': ?content,
      'description': ?description,
      'name': ?name,
    };
  }

  factory OpenApiExplorerApiMcpServerPrompt.fromMap(Map<String, dynamic> map) {
    return OpenApiExplorerApiMcpServerPrompt(
      arguments: (() {
        final guardedValue = map['arguments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<OpenApiExplorerApiMcpServerPromptArgument>(
            guardedValue,
            (value) => OpenApiExplorerApiMcpServerPromptArgument.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
