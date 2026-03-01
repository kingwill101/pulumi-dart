// ignore_for_file: unused_element, unnecessary_cast


class OpenApiExplorerApiMcpServerPromptArgument {
  /// Description of the API MCP service.
  final String? description;
  /// Name of the MCP Server. It can contain digits, English letters, and hyphens (-).
  final String? name;
  /// Indicates whether the prompt parameter is required.
  final bool? required;

  /// Creates a new [OpenApiExplorerApiMcpServerPromptArgument].
  /// [description] Description of the API MCP service.
  /// [name] Name of the MCP Server. It can contain digits, English letters, and hyphens (-).
  /// [required] Indicates whether the prompt parameter is required.
  OpenApiExplorerApiMcpServerPromptArgument({
    this.description,
    this.name,
    this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'required': ?required,
    };
  }

  factory OpenApiExplorerApiMcpServerPromptArgument.fromMap(Map<String, dynamic> map) {
    return OpenApiExplorerApiMcpServerPromptArgument(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
    );
  }
}

