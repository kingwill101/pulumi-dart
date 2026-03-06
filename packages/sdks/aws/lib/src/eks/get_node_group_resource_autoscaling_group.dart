// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeGroupResourceAutoscalingGroup {
  /// Name of the AutoScaling Group.
  final pulumi.Input<String> name;

  /// Creates a new [GetNodeGroupResourceAutoscalingGroup].
  /// [name] Name of the AutoScaling Group.
  const GetNodeGroupResourceAutoscalingGroup({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetNodeGroupResourceAutoscalingGroup.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupResourceAutoscalingGroup(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

