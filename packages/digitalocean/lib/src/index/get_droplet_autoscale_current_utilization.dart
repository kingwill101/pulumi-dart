// ignore_for_file: unused_element, unnecessary_cast


class GetDropletAutoscaleCurrentUtilization {
  /// Average CPU utilization
  final double cpu;
  /// Average Memory utilization
  final double memory;

  /// Creates a new [GetDropletAutoscaleCurrentUtilization].
  /// [cpu] Average CPU utilization
  /// [memory] Average Memory utilization
  GetDropletAutoscaleCurrentUtilization({
    required this.cpu,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'memory': memory,
    };
  }

  factory GetDropletAutoscaleCurrentUtilization.fromMap(Map<String, dynamic> map) {
    return GetDropletAutoscaleCurrentUtilization(
      cpu: map['cpu'] as double,
      memory: map['memory'] as double,
    );
  }
}

