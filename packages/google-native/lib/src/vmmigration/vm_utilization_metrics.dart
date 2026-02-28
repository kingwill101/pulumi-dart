// ignore_for_file: unused_element, unnecessary_cast

/// Utilization metrics values for a single VM.
class VmUtilizationMetrics {
  /// Average CPU usage, percent.
  final int? cpuAveragePercent;

  /// Max CPU usage, percent.
  final int? cpuMaxPercent;

  /// Average disk IO rate, in kilobytes per second.
  final String? diskIoRateAverageKbps;

  /// Max disk IO rate, in kilobytes per second.
  final String? diskIoRateMaxKbps;

  /// Average memory usage, percent.
  final int? memoryAveragePercent;

  /// Max memory usage, percent.
  final int? memoryMaxPercent;

  /// Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final String? networkThroughputAverageKbps;

  /// Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final String? networkThroughputMaxKbps;

  /// Creates a new [VmUtilizationMetrics].
  /// [cpuAveragePercent] Average CPU usage, percent.
  /// [cpuMaxPercent] Max CPU usage, percent.
  /// [diskIoRateAverageKbps] Average disk IO rate, in kilobytes per second.
  /// [diskIoRateMaxKbps] Max disk IO rate, in kilobytes per second.
  /// [memoryAveragePercent] Average memory usage, percent.
  /// [memoryMaxPercent] Max memory usage, percent.
  /// [networkThroughputAverageKbps] Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  /// [networkThroughputMaxKbps] Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  VmUtilizationMetrics({
    this.cpuAveragePercent,
    this.cpuMaxPercent,
    this.diskIoRateAverageKbps,
    this.diskIoRateMaxKbps,
    this.memoryAveragePercent,
    this.memoryMaxPercent,
    this.networkThroughputAverageKbps,
    this.networkThroughputMaxKbps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuAveragePercentValue = cpuAveragePercent;
    if (cpuAveragePercentValue != null) {
      map['cpuAveragePercent'] = cpuAveragePercentValue;
    }
    final cpuMaxPercentValue = cpuMaxPercent;
    if (cpuMaxPercentValue != null) {
      map['cpuMaxPercent'] = cpuMaxPercentValue;
    }
    final diskIoRateAverageKbpsValue = diskIoRateAverageKbps;
    if (diskIoRateAverageKbpsValue != null) {
      map['diskIoRateAverageKbps'] = diskIoRateAverageKbpsValue;
    }
    final diskIoRateMaxKbpsValue = diskIoRateMaxKbps;
    if (diskIoRateMaxKbpsValue != null) {
      map['diskIoRateMaxKbps'] = diskIoRateMaxKbpsValue;
    }
    final memoryAveragePercentValue = memoryAveragePercent;
    if (memoryAveragePercentValue != null) {
      map['memoryAveragePercent'] = memoryAveragePercentValue;
    }
    final memoryMaxPercentValue = memoryMaxPercent;
    if (memoryMaxPercentValue != null) {
      map['memoryMaxPercent'] = memoryMaxPercentValue;
    }
    final networkThroughputAverageKbpsValue = networkThroughputAverageKbps;
    if (networkThroughputAverageKbpsValue != null) {
      map['networkThroughputAverageKbps'] = networkThroughputAverageKbpsValue;
    }
    final networkThroughputMaxKbpsValue = networkThroughputMaxKbps;
    if (networkThroughputMaxKbpsValue != null) {
      map['networkThroughputMaxKbps'] = networkThroughputMaxKbpsValue;
    }
    return map;
  }

  factory VmUtilizationMetrics.fromMap(Map<String, dynamic> map) {
    return VmUtilizationMetrics(
      cpuAveragePercent: map['cpuAveragePercent'] == null
          ? null
          : map['cpuAveragePercent'] as int,
      cpuMaxPercent:
          map['cpuMaxPercent'] == null ? null : map['cpuMaxPercent'] as int,
      diskIoRateAverageKbps: map['diskIoRateAverageKbps'] == null
          ? null
          : map['diskIoRateAverageKbps'] as String,
      diskIoRateMaxKbps: map['diskIoRateMaxKbps'] == null
          ? null
          : map['diskIoRateMaxKbps'] as String,
      memoryAveragePercent: map['memoryAveragePercent'] == null
          ? null
          : map['memoryAveragePercent'] as int,
      memoryMaxPercent: map['memoryMaxPercent'] == null
          ? null
          : map['memoryMaxPercent'] as int,
      networkThroughputAverageKbps: map['networkThroughputAverageKbps'] == null
          ? null
          : map['networkThroughputAverageKbps'] as String,
      networkThroughputMaxKbps: map['networkThroughputMaxKbps'] == null
          ? null
          : map['networkThroughputMaxKbps'] as String,
    );
  }
}
