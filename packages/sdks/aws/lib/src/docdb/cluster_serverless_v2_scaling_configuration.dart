// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterServerlessV2ScalingConfiguration {
  /// Maximum number of Amazon DocumentDB capacity units (DCUs) for an instance in an Amazon DocumentDB Serverless cluster. Valid values are multiples of 0.5 between 1 and 256.
  final pulumi.Input<double> maxCapacity;
  /// Minimum number of Amazon DocumentDB capacity units (DCUs) for an instance in an Amazon DocumentDB Serverless cluster. Valid values are multiples of 0.5 between 0.5 and 256.
  final pulumi.Input<double> minCapacity;

  /// Creates a new [ClusterServerlessV2ScalingConfiguration].
  /// [maxCapacity] Maximum number of Amazon DocumentDB capacity units (DCUs) for an instance in an Amazon DocumentDB Serverless cluster. Valid values are multiples of 0.5 between 1 and 256.
  /// [minCapacity] Minimum number of Amazon DocumentDB capacity units (DCUs) for an instance in an Amazon DocumentDB Serverless cluster. Valid values are multiples of 0.5 between 0.5 and 256.
  const ClusterServerlessV2ScalingConfiguration({
    required this.maxCapacity,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': maxCapacity,
      'minCapacity': minCapacity,
    };
  }

  factory ClusterServerlessV2ScalingConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterServerlessV2ScalingConfiguration(
      maxCapacity: pulumi.Input.fromValue((map['maxCapacity'] as num).toDouble()),
      minCapacity: pulumi.Input.fromValue((map['minCapacity'] as num).toDouble()),
    );
  }
}
