// ignore_for_file: unused_element, unnecessary_cast

class FunctionEventInvokeConfigDestinationConfigOnFailure {
  /// ARN of the destination resource. See the [Lambda Developer Guide](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations) for acceptable resource types and associated IAM permissions.
  final String destination;

  /// Creates a new [FunctionEventInvokeConfigDestinationConfigOnFailure].
  /// [destination] ARN of the destination resource. See the [Lambda Developer Guide](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations) for acceptable resource types and associated IAM permissions.
  FunctionEventInvokeConfigDestinationConfigOnFailure({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = destination;
    return map;
  }

  factory FunctionEventInvokeConfigDestinationConfigOnFailure.fromMap(
      Map<String, dynamic> map) {
    return FunctionEventInvokeConfigDestinationConfigOnFailure(
      destination: map['destination'] as String,
    );
  }
}
