// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InputMediaConnectFlow {
  /// The ARN of the MediaConnect Flow
  final pulumi.Input<String> flowArn;

  /// Creates a new [InputMediaConnectFlow].
  /// [flowArn] The ARN of the MediaConnect Flow
  const InputMediaConnectFlow({
    required this.flowArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowArn': flowArn,
    };
  }

  factory InputMediaConnectFlow.fromMap(Map<String, dynamic> map) {
    return InputMediaConnectFlow(
      flowArn: pulumi.Input.fromValue(map['flowArn'] as String),
    );
  }
}

