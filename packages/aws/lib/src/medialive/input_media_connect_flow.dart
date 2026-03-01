// ignore_for_file: unused_element, unnecessary_cast


class InputMediaConnectFlow {
  /// The ARN of the MediaConnect Flow
  final String flowArn;

  /// Creates a new [InputMediaConnectFlow].
  /// [flowArn] The ARN of the MediaConnect Flow
  InputMediaConnectFlow({
    required this.flowArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowArn': flowArn,
    };
  }

  factory InputMediaConnectFlow.fromMap(Map<String, dynamic> map) {
    return InputMediaConnectFlow(
      flowArn: map['flowArn'] as String,
    );
  }
}

