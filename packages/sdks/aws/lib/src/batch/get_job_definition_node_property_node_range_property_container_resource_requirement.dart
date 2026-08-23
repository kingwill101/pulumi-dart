// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement {
  /// Type of resource to assign to a container. The supported resources include `GPU`, `MEMORY`, and `VCPU`.
  final pulumi.Input<String> type;
  /// Quantity of the specified resource to reserve for the container.
  final pulumi.Input<String> value;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement].
  /// [type] Type of resource to assign to a container. The supported resources include `GPU`, `MEMORY`, and `VCPU`.
  /// [value] Quantity of the specified resource to reserve for the container.
  const GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
