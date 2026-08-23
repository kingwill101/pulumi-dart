// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInputMediaConnectFlow {
  final pulumi.Input<String> flowArn;

  /// Creates a new [GetInputMediaConnectFlow].
  /// [flowArn] Required.
  const GetInputMediaConnectFlow({
    required this.flowArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowArn': flowArn,
    };
  }

  factory GetInputMediaConnectFlow.fromMap(Map<String, dynamic> map) {
    return GetInputMediaConnectFlow(
      flowArn: pulumi.Input.fromValue(map['flowArn'] as String),
    );
  }
}
