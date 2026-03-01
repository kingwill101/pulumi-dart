// ignore_for_file: unused_element, unnecessary_cast


/// Specifies how tasks should be distributed across compute nodes.
class TaskSchedulingPolicyResponse {
  /// How tasks should be distributed across compute nodes.
  final String nodeFillType;

  /// Creates a new [TaskSchedulingPolicyResponse].
  /// [nodeFillType] How tasks should be distributed across compute nodes.
  TaskSchedulingPolicyResponse({
    required this.nodeFillType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeFillType': nodeFillType,
    };
  }

  factory TaskSchedulingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return TaskSchedulingPolicyResponse(
      nodeFillType: map['nodeFillType'] as String,
    );
  }
}

