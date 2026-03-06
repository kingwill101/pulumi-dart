// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenApiExplorerApiMcpServerTerraformTool {
  /// Specifies whether execution is asynchronous. If enabled, the system immediately proceeds to the next task after initiating a task, without waiting for each resource operation to complete.
  final pulumi.Input<bool>? async;
  final pulumi.Input<String>? code;
  final pulumi.Input<String>? description;
  /// The cleanup policy applied to temporary resources after task completion, based on the task execution status:
  /// - NEVER: Do not delete any created resources, regardless of whether the task succeeds or fails.
  /// - ALWAYS: Immediately destroy all related resources upon task completion, regardless of success or failure.
  /// - ON_FAILURE: Delete related resources only if the task fails; retain them if the task succeeds.
  final pulumi.Input<String>? destroyPolicy;
  final pulumi.Input<String>? name;

  /// Creates a new [OpenApiExplorerApiMcpServerTerraformTool].
  /// [async] Specifies whether execution is asynchronous. If enabled, the system immediately proceeds to the next task after initiating a task, without waiting for each resource operation to complete.
  /// [code] Optional.
  /// [description] Optional.
  /// [destroyPolicy] The cleanup policy applied to temporary resources after task completion, based on the task execution status:
  /// [name] Optional.
  const OpenApiExplorerApiMcpServerTerraformTool({
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
      async: (() { final guardedValue = map['async']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destroyPolicy: (() { final guardedValue = map['destroyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

