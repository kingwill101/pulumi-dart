// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupResourceAutoscalingGroup {
  /// Name of the AutoScaling Group.
  final pulumi.Input<String>? name;

  /// Creates a new [NodeGroupResourceAutoscalingGroup].
  /// [name] Name of the AutoScaling Group.
  NodeGroupResourceAutoscalingGroup({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory NodeGroupResourceAutoscalingGroup.fromMap(Map<String, dynamic> map) {
    return NodeGroupResourceAutoscalingGroup(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

