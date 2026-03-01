// ignore_for_file: unused_element, unnecessary_cast

/// Utilization metrics values for a single VM.
class VmUtilizationMetricsResponseVmmigrationV1alpha1 {
  /// Average CPU usage, percent.
  final int cpuAverage;

  /// Average CPU usage, percent.
  final int cpuAveragePercent;

  /// Max CPU usage, percent.
  final int cpuMax;

  /// Max CPU usage, percent.
  final int cpuMaxPercent;

  /// Average disk IO rate, in kilobytes per second.
  final String diskIoRateAverage;

  /// Average disk IO rate, in kilobytes per second.
  final String diskIoRateAverageKbps;

  /// Max disk IO rate, in kilobytes per second.
  final String diskIoRateMax;

  /// Max disk IO rate, in kilobytes per second.
  final String diskIoRateMaxKbps;

  /// Average memory usage, percent.
  final int memoryAverage;

  /// Average memory usage, percent.
  final int memoryAveragePercent;

  /// Max memory usage, percent.
  final int memoryMax;

  /// Max memory usage, percent.
  final int memoryMaxPercent;

  /// Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final String networkThroughputAverage;

  /// Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final String networkThroughputAverageKbps;

  /// Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final String networkThroughputMax;

  /// Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final String networkThroughputMaxKbps;

  /// Creates a new [VmUtilizationMetricsResponseVmmigrationV1alpha1].
  /// [cpuAverage] Average CPU usage, percent.
  /// [cpuAveragePercent] Average CPU usage, percent.
  /// [cpuMax] Max CPU usage, percent.
  /// [cpuMaxPercent] Max CPU usage, percent.
  /// [diskIoRateAverage] Average disk IO rate, in kilobytes per second.
  /// [diskIoRateAverageKbps] Average disk IO rate, in kilobytes per second.
  /// [diskIoRateMax] Max disk IO rate, in kilobytes per second.
  /// [diskIoRateMaxKbps] Max disk IO rate, in kilobytes per second.
  /// [memoryAverage] Average memory usage, percent.
  /// [memoryAveragePercent] Average memory usage, percent.
  /// [memoryMax] Max memory usage, percent.
  /// [memoryMaxPercent] Max memory usage, percent.
  /// [networkThroughputAverage] Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  /// [networkThroughputAverageKbps] Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  /// [networkThroughputMax] Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  /// [networkThroughputMaxKbps] Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  VmUtilizationMetricsResponseVmmigrationV1alpha1({
    required this.cpuAverage,
    required this.cpuAveragePercent,
    required this.cpuMax,
    required this.cpuMaxPercent,
    required this.diskIoRateAverage,
    required this.diskIoRateAverageKbps,
    required this.diskIoRateMax,
    required this.diskIoRateMaxKbps,
    required this.memoryAverage,
    required this.memoryAveragePercent,
    required this.memoryMax,
    required this.memoryMaxPercent,
    required this.networkThroughputAverage,
    required this.networkThroughputAverageKbps,
    required this.networkThroughputMax,
    required this.networkThroughputMaxKbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuAverage': cpuAverage,
      'cpuAveragePercent': cpuAveragePercent,
      'cpuMax': cpuMax,
      'cpuMaxPercent': cpuMaxPercent,
      'diskIoRateAverage': diskIoRateAverage,
      'diskIoRateAverageKbps': diskIoRateAverageKbps,
      'diskIoRateMax': diskIoRateMax,
      'diskIoRateMaxKbps': diskIoRateMaxKbps,
      'memoryAverage': memoryAverage,
      'memoryAveragePercent': memoryAveragePercent,
      'memoryMax': memoryMax,
      'memoryMaxPercent': memoryMaxPercent,
      'networkThroughputAverage': networkThroughputAverage,
      'networkThroughputAverageKbps': networkThroughputAverageKbps,
      'networkThroughputMax': networkThroughputMax,
      'networkThroughputMaxKbps': networkThroughputMaxKbps,
    };
  }

  factory VmUtilizationMetricsResponseVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmUtilizationMetricsResponseVmmigrationV1alpha1(
      cpuAverage: map['cpuAverage'] as int,
      cpuAveragePercent: map['cpuAveragePercent'] as int,
      cpuMax: map['cpuMax'] as int,
      cpuMaxPercent: map['cpuMaxPercent'] as int,
      diskIoRateAverage: map['diskIoRateAverage'] as String,
      diskIoRateAverageKbps: map['diskIoRateAverageKbps'] as String,
      diskIoRateMax: map['diskIoRateMax'] as String,
      diskIoRateMaxKbps: map['diskIoRateMaxKbps'] as String,
      memoryAverage: map['memoryAverage'] as int,
      memoryAveragePercent: map['memoryAveragePercent'] as int,
      memoryMax: map['memoryMax'] as int,
      memoryMaxPercent: map['memoryMaxPercent'] as int,
      networkThroughputAverage: map['networkThroughputAverage'] as String,
      networkThroughputAverageKbps:
          map['networkThroughputAverageKbps'] as String,
      networkThroughputMax: map['networkThroughputMax'] as String,
      networkThroughputMaxKbps: map['networkThroughputMaxKbps'] as String,
    );
  }
}
