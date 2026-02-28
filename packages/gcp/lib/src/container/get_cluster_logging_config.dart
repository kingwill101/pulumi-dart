// ignore_for_file: unused_element, unnecessary_cast

class GetClusterLoggingConfig {
  /// GKE components exposing logs. Valid values include SYSTEM_COMPONENTS, APISERVER, CONTROLLER_MANAGER, KCP_CONNECTION, KCP_SSHD, KCP_HPA, SCHEDULER, and WORKLOADS.
  final List<String> enableComponents;

  /// Creates a new [GetClusterLoggingConfig].
  /// [enableComponents] GKE components exposing logs. Valid values include SYSTEM_COMPONENTS, APISERVER, CONTROLLER_MANAGER, KCP_CONNECTION, KCP_SSHD, KCP_HPA, SCHEDULER, and WORKLOADS.
  GetClusterLoggingConfig({
    required this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableComponents'] = enableComponents;
    return map;
  }

  factory GetClusterLoggingConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterLoggingConfig(
      enableComponents: (map['enableComponents'] as List).cast<String>(),
    );
  }
}
