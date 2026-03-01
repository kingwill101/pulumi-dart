// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminClusterOperationsConfig specifies the admin cluster's observability infrastructure.
class BareMetalAdminClusterOperationsConfig {
  /// Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  final bool? enableApplicationLogs;

  /// Creates a new [BareMetalAdminClusterOperationsConfig].
  /// [enableApplicationLogs] Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  BareMetalAdminClusterOperationsConfig({this.enableApplicationLogs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableApplicationLogs': ?enableApplicationLogs};
  }

  factory BareMetalAdminClusterOperationsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminClusterOperationsConfig(
      enableApplicationLogs: map['enableApplicationLogs'] == null
          ? null
          : map['enableApplicationLogs'] as bool,
    );
  }
}
