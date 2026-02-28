// ignore_for_file: unused_element, unnecessary_cast


/// BareMetalAdminClusterOperationsConfig specifies the admin cluster's observability infrastructure.
class BareMetalAdminClusterOperationsConfigResponse {
  /// Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  final bool enableApplicationLogs;

  /// Creates a new [BareMetalAdminClusterOperationsConfigResponse].
  /// [enableApplicationLogs] Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  BareMetalAdminClusterOperationsConfigResponse({
    required this.enableApplicationLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableApplicationLogs': enableApplicationLogs,
    };
  }

  factory BareMetalAdminClusterOperationsConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterOperationsConfigResponse(
      enableApplicationLogs: map['enableApplicationLogs'] as bool,
    );
  }
}

