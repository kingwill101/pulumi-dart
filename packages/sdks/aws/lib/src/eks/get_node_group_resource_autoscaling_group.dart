// ignore_for_file: unused_element, unnecessary_cast


class GetNodeGroupResourceAutoscalingGroup {
  /// Name of the AutoScaling Group.
  final String name;

  /// Creates a new [GetNodeGroupResourceAutoscalingGroup].
  /// [name] Name of the AutoScaling Group.
  GetNodeGroupResourceAutoscalingGroup({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetNodeGroupResourceAutoscalingGroup.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupResourceAutoscalingGroup(
      name: map['name'] as String,
    );
  }
}

