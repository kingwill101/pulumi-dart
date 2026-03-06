// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionEventInvokeConfigDestinationConfigOnFailure {
  /// ARN of the destination resource. See the [Lambda Developer Guide](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations) for acceptable resource types and associated IAM permissions.
  final pulumi.Input<String> destination;

  /// Creates a new [FunctionEventInvokeConfigDestinationConfigOnFailure].
  /// [destination] ARN of the destination resource. See the [Lambda Developer Guide](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations) for acceptable resource types and associated IAM permissions.
  const FunctionEventInvokeConfigDestinationConfigOnFailure({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
    };
  }

  factory FunctionEventInvokeConfigDestinationConfigOnFailure.fromMap(Map<String, dynamic> map) {
    return FunctionEventInvokeConfigDestinationConfigOnFailure(
      destination: pulumi.Input.fromValue(map['destination'] as String),
    );
  }
}

