// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterServerlessV2ScalingConfiguration {
  /// Maximum Neptune Capacity Units (NCUs) for this cluster. Must be lower or equal than **128**. See [AWS Documentation](https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-capacity-scaling.html) for more details.
  final pulumi.Input<double>? maxCapacity;

  /// Minimum Neptune Capacity Units (NCUs) for this cluster. Must be greater or equal than **1**. See [AWS Documentation](https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-capacity-scaling.html) for more details.
  final pulumi.Input<double>? minCapacity;

  /// Creates a new [ClusterServerlessV2ScalingConfiguration].
  /// [maxCapacity] Maximum Neptune Capacity Units (NCUs) for this cluster. Must be lower or equal than **128**. See [AWS Documentation](https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-capacity-scaling.html) for more details.
  /// [minCapacity] Minimum Neptune Capacity Units (NCUs) for this cluster. Must be greater or equal than **1**. See [AWS Documentation](https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-capacity-scaling.html) for more details.
  ClusterServerlessV2ScalingConfiguration({this.maxCapacity, this.minCapacity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': ?maxCapacity,
      'minCapacity': ?minCapacity,
    };
  }

  factory ClusterServerlessV2ScalingConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterServerlessV2ScalingConfiguration(
      maxCapacity: (() {
        final guardedValue = map['maxCapacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      minCapacity: (() {
        final guardedValue = map['minCapacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
