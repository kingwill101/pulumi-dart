// ignore_for_file: unused_element, unnecessary_cast

class InputMediaConnectFlow {
  /// The ARN of the MediaConnect Flow
  final String flowArn;

  InputMediaConnectFlow({
    required this.flowArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['flowArn'] = flowArn;
    return map;
  }

  factory InputMediaConnectFlow.fromMap(Map<String, dynamic> map) {
    return InputMediaConnectFlow(
      flowArn: map['flowArn'] as String,
    );
  }
}
