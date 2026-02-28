// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupAttachmentTarget {
  /// The ID of the target. If the target type of the target group is INSTANCE, this is an instance ID. If the target type is IP , this is an IP address. If the target type is LAMBDA, this is the ARN of the Lambda function. If the target type is ALB, this is the ARN of the Application Load Balancer.
  final String id;

  /// This port is used for routing traffic to the target, and defaults to the target group port. However, you can override the default and specify a custom port.
  final int? port;

  /// Creates a new [TargetGroupAttachmentTarget].
  /// [id] The ID of the target. If the target type of the target group is INSTANCE, this is an instance ID. If the target type is IP , this is an IP address. If the target type is LAMBDA, this is the ARN of the Lambda function. If the target type is ALB, this is the ARN of the Application Load Balancer.
  /// [port] This port is used for routing traffic to the target, and defaults to the target group port. However, you can override the default and specify a custom port.
  TargetGroupAttachmentTarget({
    required this.id,
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory TargetGroupAttachmentTarget.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttachmentTarget(
      id: map['id'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
