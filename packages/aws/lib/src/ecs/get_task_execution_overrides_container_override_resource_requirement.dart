// ignore_for_file: unused_element, unnecessary_cast

class GetTaskExecutionOverridesContainerOverrideResourceRequirement {
  /// The type of resource to assign to a container. Valid values are `GPU`.
  final String type;

  /// The value for the specified resource type. If the `GPU` type is used, the value is the number of physical GPUs the Amazon ECS container agent reserves for the container. The number of GPUs that's reserved for all containers in a task can't exceed the number of available GPUs on the container instance that the task is launched on.
  final String value;

  /// Creates a new [GetTaskExecutionOverridesContainerOverrideResourceRequirement].
  /// [type] The type of resource to assign to a container. Valid values are `GPU`.
  /// [value] The value for the specified resource type. If the `GPU` type is used, the value is the number of physical GPUs the Amazon ECS container agent reserves for the container. The number of GPUs that's reserved for all containers in a task can't exceed the number of available GPUs on the container instance that the task is launched on.
  GetTaskExecutionOverridesContainerOverrideResourceRequirement({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'value': value};
  }

  factory GetTaskExecutionOverridesContainerOverrideResourceRequirement.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTaskExecutionOverridesContainerOverrideResourceRequirement(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
