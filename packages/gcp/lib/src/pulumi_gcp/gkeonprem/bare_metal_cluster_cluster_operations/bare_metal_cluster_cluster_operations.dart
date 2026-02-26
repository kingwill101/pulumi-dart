// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterClusterOperations {
  /// Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  final bool? enableApplicationLogs;

  BareMetalClusterClusterOperations({
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

  factory BareMetalClusterClusterOperations.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterClusterOperations(
      enableApplicationLogs: map['enableApplicationLogs'] == null
          ? null
          : map['enableApplicationLogs'] as bool,
    );
  }
}
