// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ResourceRequirement
class ResourceRequirementResponse {
  /// The type of resource to assign to a container. The supported values are ``GPU`` or ``InferenceAccelerator``.
  final pulumi.Input<String>? type;
  /// The value for the specified resource type. If the ``GPU`` type is used, the value is the number of physical ``GPUs`` the Amazon ECS container agent reserves for the container. The number of GPUs that's reserved for all containers in a task can't exceed the number of available GPUs on the container instance that the task is launched on. If the ``InferenceAccelerator`` type is used, the ``value`` matches the ``deviceName`` for an [InferenceAccelerator](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_InferenceAccelerator.html) specified in a task definition.
  final pulumi.Input<String>? value;

  /// Creates a new [ResourceRequirementResponse].
  /// [type] The type of resource to assign to a container. The supported values are ``GPU`` or ``InferenceAccelerator``.
  /// [value] The value for the specified resource type. If the ``GPU`` type is used, the value is the number of physical ``GPUs`` the Amazon ECS container agent reserves for the container. The number of GPUs that's reserved for all containers in a task can't exceed the number of available GPUs on the container instance that the task is launched on. If the ``InferenceAccelerator`` type is used, the ``value`` matches the ``deviceName`` for an [InferenceAccelerator](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_InferenceAccelerator.html) specified in a task definition.
  const ResourceRequirementResponse({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory ResourceRequirementResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRequirementResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
