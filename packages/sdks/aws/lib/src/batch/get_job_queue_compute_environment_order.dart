// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobQueueComputeEnvironmentOrder {
  final pulumi.Input<String> computeEnvironment;
  final pulumi.Input<int> order;

  /// Creates a new [GetJobQueueComputeEnvironmentOrder].
  /// [computeEnvironment] Required.
  /// [order] Required.
  const GetJobQueueComputeEnvironmentOrder({
    required this.computeEnvironment,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeEnvironment': computeEnvironment,
      'order': order,
    };
  }

  factory GetJobQueueComputeEnvironmentOrder.fromMap(Map<String, dynamic> map) {
    return GetJobQueueComputeEnvironmentOrder(
      computeEnvironment: pulumi.Input.fromValue(map['computeEnvironment'] as String),
      order: pulumi.Input.fromValue(map['order'] as int),
    );
  }
}

