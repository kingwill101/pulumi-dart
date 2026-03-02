// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionEventInvokeConfigDestinationConfigOnSuccess {
  /// ARN of the destination resource. See the [Lambda Developer Guide](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations) for acceptable resource types and associated IAM permissions.
  final pulumi.Input<String> destination;

  /// Creates a new [FunctionEventInvokeConfigDestinationConfigOnSuccess].
  /// [destination] ARN of the destination resource. See the [Lambda Developer Guide](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations) for acceptable resource types and associated IAM permissions.
  FunctionEventInvokeConfigDestinationConfigOnSuccess({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
    };
  }

  factory FunctionEventInvokeConfigDestinationConfigOnSuccess.fromMap(Map<String, dynamic> map) {
    return FunctionEventInvokeConfigDestinationConfigOnSuccess(
      destination: (map['destination'] as String).input(),
    );
  }
}

