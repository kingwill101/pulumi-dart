// ignore_for_file: unused_element, unnecessary_cast

/// Utilization metrics values for a single VM.
class VmUtilizationMetricsVmmigrationV1alpha1 {
  /// Average CPU usage, percent.
  final int? cpuAverage;

  /// Average CPU usage, percent.
  final int? cpuAveragePercent;

  /// Max CPU usage, percent.
  final int? cpuMax;

  /// Max CPU usage, percent.
  final int? cpuMaxPercent;

  /// Average disk IO rate, in kilobytes per second.
  final String? diskIoRateAverage;

  /// Average disk IO rate, in kilobytes per second.
  final String? diskIoRateAverageKbps;

  /// Max disk IO rate, in kilobytes per second.
  final String? diskIoRateMax;

  /// Max disk IO rate, in kilobytes per second.
  final String? diskIoRateMaxKbps;

  /// Average memory usage, percent.
  final int? memoryAverage;

  /// Average memory usage, percent.
  final int? memoryAveragePercent;

  /// Max memory usage, percent.
  final int? memoryMax;

  /// Max memory usage, percent.
  final int? memoryMaxPercent;

  /// Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final String? networkThroughputAverage;

  /// Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final String? networkThroughputAverageKbps;

  /// Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final String? networkThroughputMax;

  /// Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final String? networkThroughputMaxKbps;

  /// Creates a new [VmUtilizationMetricsVmmigrationV1alpha1].
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
  VmUtilizationMetricsVmmigrationV1alpha1({
    this.cpuAverage,
    this.cpuAveragePercent,
    this.cpuMax,
    this.cpuMaxPercent,
    this.diskIoRateAverage,
    this.diskIoRateAverageKbps,
    this.diskIoRateMax,
    this.diskIoRateMaxKbps,
    this.memoryAverage,
    this.memoryAveragePercent,
    this.memoryMax,
    this.memoryMaxPercent,
    this.networkThroughputAverage,
    this.networkThroughputAverageKbps,
    this.networkThroughputMax,
    this.networkThroughputMaxKbps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuAverageValue = cpuAverage;
    if (cpuAverageValue != null) {
      map['cpuAverage'] = cpuAverageValue;
    }
    final cpuAveragePercentValue = cpuAveragePercent;
    if (cpuAveragePercentValue != null) {
      map['cpuAveragePercent'] = cpuAveragePercentValue;
    }
    final cpuMaxValue = cpuMax;
    if (cpuMaxValue != null) {
      map['cpuMax'] = cpuMaxValue;
    }
    final cpuMaxPercentValue = cpuMaxPercent;
    if (cpuMaxPercentValue != null) {
      map['cpuMaxPercent'] = cpuMaxPercentValue;
    }
    final diskIoRateAverageValue = diskIoRateAverage;
    if (diskIoRateAverageValue != null) {
      map['diskIoRateAverage'] = diskIoRateAverageValue;
    }
    final diskIoRateAverageKbpsValue = diskIoRateAverageKbps;
    if (diskIoRateAverageKbpsValue != null) {
      map['diskIoRateAverageKbps'] = diskIoRateAverageKbpsValue;
    }
    final diskIoRateMaxValue = diskIoRateMax;
    if (diskIoRateMaxValue != null) {
      map['diskIoRateMax'] = diskIoRateMaxValue;
    }
    final diskIoRateMaxKbpsValue = diskIoRateMaxKbps;
    if (diskIoRateMaxKbpsValue != null) {
      map['diskIoRateMaxKbps'] = diskIoRateMaxKbpsValue;
    }
    final memoryAverageValue = memoryAverage;
    if (memoryAverageValue != null) {
      map['memoryAverage'] = memoryAverageValue;
    }
    final memoryAveragePercentValue = memoryAveragePercent;
    if (memoryAveragePercentValue != null) {
      map['memoryAveragePercent'] = memoryAveragePercentValue;
    }
    final memoryMaxValue = memoryMax;
    if (memoryMaxValue != null) {
      map['memoryMax'] = memoryMaxValue;
    }
    final memoryMaxPercentValue = memoryMaxPercent;
    if (memoryMaxPercentValue != null) {
      map['memoryMaxPercent'] = memoryMaxPercentValue;
    }
    final networkThroughputAverageValue = networkThroughputAverage;
    if (networkThroughputAverageValue != null) {
      map['networkThroughputAverage'] = networkThroughputAverageValue;
    }
    final networkThroughputAverageKbpsValue = networkThroughputAverageKbps;
    if (networkThroughputAverageKbpsValue != null) {
      map['networkThroughputAverageKbps'] = networkThroughputAverageKbpsValue;
    }
    final networkThroughputMaxValue = networkThroughputMax;
    if (networkThroughputMaxValue != null) {
      map['networkThroughputMax'] = networkThroughputMaxValue;
    }
    final networkThroughputMaxKbpsValue = networkThroughputMaxKbps;
    if (networkThroughputMaxKbpsValue != null) {
      map['networkThroughputMaxKbps'] = networkThroughputMaxKbpsValue;
    }
    return map;
  }

  factory VmUtilizationMetricsVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return VmUtilizationMetricsVmmigrationV1alpha1(
      cpuAverage: map['cpuAverage'] == null ? null : map['cpuAverage'] as int,
      cpuAveragePercent: map['cpuAveragePercent'] == null
          ? null
          : map['cpuAveragePercent'] as int,
      cpuMax: map['cpuMax'] == null ? null : map['cpuMax'] as int,
      cpuMaxPercent:
          map['cpuMaxPercent'] == null ? null : map['cpuMaxPercent'] as int,
      diskIoRateAverage: map['diskIoRateAverage'] == null
          ? null
          : map['diskIoRateAverage'] as String,
      diskIoRateAverageKbps: map['diskIoRateAverageKbps'] == null
          ? null
          : map['diskIoRateAverageKbps'] as String,
      diskIoRateMax:
          map['diskIoRateMax'] == null ? null : map['diskIoRateMax'] as String,
      diskIoRateMaxKbps: map['diskIoRateMaxKbps'] == null
          ? null
          : map['diskIoRateMaxKbps'] as String,
      memoryAverage:
          map['memoryAverage'] == null ? null : map['memoryAverage'] as int,
      memoryAveragePercent: map['memoryAveragePercent'] == null
          ? null
          : map['memoryAveragePercent'] as int,
      memoryMax: map['memoryMax'] == null ? null : map['memoryMax'] as int,
      memoryMaxPercent: map['memoryMaxPercent'] == null
          ? null
          : map['memoryMaxPercent'] as int,
      networkThroughputAverage: map['networkThroughputAverage'] == null
          ? null
          : map['networkThroughputAverage'] as String,
      networkThroughputAverageKbps: map['networkThroughputAverageKbps'] == null
          ? null
          : map['networkThroughputAverageKbps'] as String,
      networkThroughputMax: map['networkThroughputMax'] == null
          ? null
          : map['networkThroughputMax'] as String,
      networkThroughputMaxKbps: map['networkThroughputMaxKbps'] == null
          ? null
          : map['networkThroughputMaxKbps'] as String,
    );
  }
}
