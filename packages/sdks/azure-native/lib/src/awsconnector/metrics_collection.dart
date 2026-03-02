// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MetricsCollection
class MetricsCollection {
  /// The frequency at which Amazon EC2 Auto Scaling sends aggregated data to CloudWatch. The only valid value is ``1Minute``.
  final pulumi.Input<String>? granularity;
  /// Identifies the metrics to enable. You can specify one or more of the following metrics:  +   ``GroupMinSize``   +   ``GroupMaxSize``   +   ``GroupDesiredCapacity``   +   ``GroupInServiceInstances``   +   ``GroupPendingInstances``   +   ``GroupStandbyInstances``   +   ``GroupTerminatingInstances``   +   ``GroupTotalInstances``   +   ``GroupInServiceCapacity``   +   ``GroupPendingCapacity``   +   ``GroupStandbyCapacity``   +   ``GroupTerminatingCapacity``   +   ``GroupTotalCapacity``   +   ``WarmPoolDesiredCapacity``   +   ``WarmPoolWarmedCapacity``   +   ``WarmPoolPendingCapacity``   +   ``WarmPoolTerminatingCapacity``   +   ``WarmPoolTotalCapacity``   +   ``GroupAndWarmPoolDesiredCapacity``   +   ``GroupAndWarmPoolTotalCapacity``    If you specify ``Granularity`` and don't specify any metrics, all metrics are enabled. For more information, see [Auto Scaling group metrics](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html#as-group-metrics) in the *Amazon EC2 Auto Scaling User Guide*.
  final pulumi.Input<List<String>>? metrics;

  /// Creates a new [MetricsCollection].
  /// [granularity] The frequency at which Amazon EC2 Auto Scaling sends aggregated data to CloudWatch. The only valid value is ``1Minute``.
  /// [metrics] Identifies the metrics to enable. You can specify one or more of the following metrics:  +   ``GroupMinSize``   +   ``GroupMaxSize``   +   ``GroupDesiredCapacity``   +   ``GroupInServiceInstances``   +   ``GroupPendingInstances``   +   ``GroupStandbyInstances``   +   ``GroupTerminatingInstances``   +   ``GroupTotalInstances``   +   ``GroupInServiceCapacity``   +   ``GroupPendingCapacity``   +   ``GroupStandbyCapacity``   +   ``GroupTerminatingCapacity``   +   ``GroupTotalCapacity``   +   ``WarmPoolDesiredCapacity``   +   ``WarmPoolWarmedCapacity``   +   ``WarmPoolPendingCapacity``   +   ``WarmPoolTerminatingCapacity``   +   ``WarmPoolTotalCapacity``   +   ``GroupAndWarmPoolDesiredCapacity``   +   ``GroupAndWarmPoolTotalCapacity``    If you specify ``Granularity`` and don't specify any metrics, all metrics are enabled. For more information, see [Auto Scaling group metrics](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html#as-group-metrics) in the *Amazon EC2 Auto Scaling User Guide*.
  MetricsCollection({
    this.granularity,
    this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'granularity': ?granularity,
      'metrics': ?metrics,
    };
  }

  factory MetricsCollection.fromMap(Map<String, dynamic> map) {
    return MetricsCollection(
      granularity: map['granularity'] == null ? null : (map['granularity'] as String).input(),
      metrics: map['metrics'] == null ? null : ((map['metrics'] as List).cast<String>()).input(),
    );
  }
}

