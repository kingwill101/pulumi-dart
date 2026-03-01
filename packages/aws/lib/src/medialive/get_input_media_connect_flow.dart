// ignore_for_file: unused_element, unnecessary_cast


class GetInputMediaConnectFlow {
  final String flowArn;

  /// Creates a new [GetInputMediaConnectFlow].
  /// [flowArn] Required.
  GetInputMediaConnectFlow({
    required this.flowArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowArn': flowArn,
    };
  }

  factory GetInputMediaConnectFlow.fromMap(Map<String, dynamic> map) {
    return GetInputMediaConnectFlow(
      flowArn: map['flowArn'] as String,
    );
  }
}

