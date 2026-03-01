// ignore_for_file: unused_element, unnecessary_cast


class OpenApiExplorerApiMcpServerTerraformTool {
  /// Specifies whether execution is asynchronous. If enabled, the system immediately proceeds to the next task after initiating a task, without waiting for each resource operation to complete.
  final bool? async;
  final String? code;
  final String? description;
  /// The cleanup policy applied to temporary resources after task completion, based on the task execution status:
  /// - NEVER: Do not delete any created resources, regardless of whether the task succeeds or fails.
  /// - ALWAYS: Immediately destroy all related resources upon task completion, regardless of success or failure.
  /// - ON_FAILURE: Delete related resources only if the task fails; retain them if the task succeeds.
  final String? destroyPolicy;
  final String? name;

  /// Creates a new [OpenApiExplorerApiMcpServerTerraformTool].
  /// [async] Specifies whether execution is asynchronous. If enabled, the system immediately proceeds to the next task after initiating a task, without waiting for each resource operation to complete.
  /// [code] Optional.
  /// [description] Optional.
  /// [destroyPolicy] The cleanup policy applied to temporary resources after task completion, based on the task execution status:
  /// [name] Optional.
  OpenApiExplorerApiMcpServerTerraformTool({
    this.async,
    this.code,
    this.description,
    this.destroyPolicy,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'async': ?async,
      'code': ?code,
      'description': ?description,
      'destroyPolicy': ?destroyPolicy,
      'name': ?name,
    };
  }

  factory OpenApiExplorerApiMcpServerTerraformTool.fromMap(Map<String, dynamic> map) {
    return OpenApiExplorerApiMcpServerTerraformTool(
      async: map['async'] == null ? null : map['async'] as bool,
      code: map['code'] == null ? null : map['code'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      destroyPolicy: map['destroyPolicy'] == null ? null : map['destroyPolicy'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

