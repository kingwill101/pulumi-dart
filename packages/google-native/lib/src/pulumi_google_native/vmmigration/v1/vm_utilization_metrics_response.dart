// ignore_for_file: unused_element, unnecessary_cast

/// Utilization metrics values for a single VM.
class VmUtilizationMetricsResponse {
  /// Average CPU usage, percent.
  final int cpuAveragePercent;

  /// Max CPU usage, percent.
  final int cpuMaxPercent;

  /// Average disk IO rate, in kilobytes per second.
  final String diskIoRateAverageKbps;

  /// Max disk IO rate, in kilobytes per second.
  final String diskIoRateMaxKbps;

  /// Average memory usage, percent.
  final int memoryAveragePercent;

  /// Max memory usage, percent.
  final int memoryMaxPercent;

  /// Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final String networkThroughputAverageKbps;

  /// Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final String networkThroughputMaxKbps;

  VmUtilizationMetricsResponse({
    required this.cpuAveragePercent,
    required this.cpuMaxPercent,
    required this.diskIoRateAverageKbps,
    required this.diskIoRateMaxKbps,
    required this.memoryAveragePercent,
    required this.memoryMaxPercent,
    required this.networkThroughputAverageKbps,
    required this.networkThroughputMaxKbps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuAveragePercent'] = cpuAveragePercent;
    map['cpuMaxPercent'] = cpuMaxPercent;
    map['diskIoRateAverageKbps'] = diskIoRateAverageKbps;
    map['diskIoRateMaxKbps'] = diskIoRateMaxKbps;
    map['memoryAveragePercent'] = memoryAveragePercent;
    map['memoryMaxPercent'] = memoryMaxPercent;
    map['networkThroughputAverageKbps'] = networkThroughputAverageKbps;
    map['networkThroughputMaxKbps'] = networkThroughputMaxKbps;
    return map;
  }

  factory VmUtilizationMetricsResponse.fromMap(Map<String, dynamic> map) {
    return VmUtilizationMetricsResponse(
      cpuAveragePercent: map['cpuAveragePercent'] as int,
      cpuMaxPercent: map['cpuMaxPercent'] as int,
      diskIoRateAverageKbps: map['diskIoRateAverageKbps'] as String,
      diskIoRateMaxKbps: map['diskIoRateMaxKbps'] as String,
      memoryAveragePercent: map['memoryAveragePercent'] as int,
      memoryMaxPercent: map['memoryMaxPercent'] as int,
      networkThroughputAverageKbps:
          map['networkThroughputAverageKbps'] as String,
      networkThroughputMaxKbps: map['networkThroughputMaxKbps'] as String,
    );
  }
}
