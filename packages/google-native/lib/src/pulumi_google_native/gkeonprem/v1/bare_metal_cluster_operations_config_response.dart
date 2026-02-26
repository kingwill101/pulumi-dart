// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the bare metal user cluster's observability infrastructure.
class BareMetalClusterOperationsConfigResponse {
  /// Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  final bool enableApplicationLogs;

  BareMetalClusterOperationsConfigResponse({
    required this.enableApplicationLogs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableApplicationLogs'] = enableApplicationLogs;
    return map;
  }

  factory BareMetalClusterOperationsConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterOperationsConfigResponse(
      enableApplicationLogs: map['enableApplicationLogs'] as bool,
    );
  }
}
