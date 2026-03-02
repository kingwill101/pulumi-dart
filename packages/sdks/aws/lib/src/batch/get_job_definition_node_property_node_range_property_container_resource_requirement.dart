// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement {
  /// The type of resource to assign to a container. The supported resources include `GPU`, `MEMORY`, and `VCPU`.
  final pulumi.Input<String> type;
  /// The quantity of the specified resource to reserve for the container.
  final pulumi.Input<String> value;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement].
  /// [type] The type of resource to assign to a container. The supported resources include `GPU`, `MEMORY`, and `VCPU`.
  /// [value] The quantity of the specified resource to reserve for the container.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerResourceRequirement({
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
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

