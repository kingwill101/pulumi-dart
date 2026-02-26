// ignore_for_file: unused_element, unnecessary_cast

class GetInputMediaConnectFlow {
  final String flowArn;

  GetInputMediaConnectFlow({
    required this.flowArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['flowArn'] = flowArn;
    return map;
  }

  factory GetInputMediaConnectFlow.fromMap(Map<String, dynamic> map) {
    return GetInputMediaConnectFlow(
      flowArn: map['flowArn'] as String,
    );
  }
}
