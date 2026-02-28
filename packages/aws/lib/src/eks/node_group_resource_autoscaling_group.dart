// ignore_for_file: unused_element, unnecessary_cast

class NodeGroupResourceAutoscalingGroup {
  /// Name of the AutoScaling Group.
  final String? name;

  /// Creates a new [NodeGroupResourceAutoscalingGroup].
  /// [name] Name of the AutoScaling Group.
  NodeGroupResourceAutoscalingGroup({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory NodeGroupResourceAutoscalingGroup.fromMap(Map<String, dynamic> map) {
    return NodeGroupResourceAutoscalingGroup(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
