// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterClusterOperations {
  /// Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  final bool? enableApplicationLogs;

  /// Creates a new [BareMetalAdminClusterClusterOperations].
  /// [enableApplicationLogs] Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  BareMetalAdminClusterClusterOperations({this.enableApplicationLogs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableApplicationLogs': ?enableApplicationLogs};
  }

  factory BareMetalAdminClusterClusterOperations.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminClusterClusterOperations(
      enableApplicationLogs: map['enableApplicationLogs'] == null
          ? null
          : map['enableApplicationLogs'] as bool,
    );
  }
}
