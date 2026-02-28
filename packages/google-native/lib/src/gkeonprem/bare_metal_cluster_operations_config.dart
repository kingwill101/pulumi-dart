// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the bare metal user cluster's observability infrastructure.
class BareMetalClusterOperationsConfig {
  /// Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  final bool? enableApplicationLogs;

  /// Creates a new [BareMetalClusterOperationsConfig].
  /// [enableApplicationLogs] Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  BareMetalClusterOperationsConfig({
    this.enableApplicationLogs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableApplicationLogsValue = enableApplicationLogs;
    if (enableApplicationLogsValue != null) {
      map['enableApplicationLogs'] = enableApplicationLogsValue;
    }
    return map;
  }

  factory BareMetalClusterOperationsConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterOperationsConfig(
      enableApplicationLogs: map['enableApplicationLogs'] == null
          ? null
          : map['enableApplicationLogs'] as bool,
    );
  }
}
