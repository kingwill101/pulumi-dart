// ignore_for_file: unused_element, unnecessary_cast

class GetNodeGroupResourceAutoscalingGroup {
  /// Name of the AutoScaling Group.
  final String name;

  GetNodeGroupResourceAutoscalingGroup({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetNodeGroupResourceAutoscalingGroup.fromMap(
      Map<String, dynamic> map) {
    return GetNodeGroupResourceAutoscalingGroup(
      name: map['name'] as String,
    );
  }
}
