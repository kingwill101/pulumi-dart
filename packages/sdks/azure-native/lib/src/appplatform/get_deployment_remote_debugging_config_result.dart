// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDeploymentRemoteDebuggingConfig.
class GetDeploymentRemoteDebuggingConfigResult {
  /// Indicate if remote debugging is enabled
  final bool? enabled;
  /// Application debugging port
  final int? port;

  /// Creates a new [GetDeploymentRemoteDebuggingConfigResult].
  /// [enabled] Indicate if remote debugging is enabled
  /// [port] Application debugging port
  GetDeploymentRemoteDebuggingConfigResult({
    this.enabled,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'port': ?port,
    };
  }

  factory GetDeploymentRemoteDebuggingConfigResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentRemoteDebuggingConfigResult(
      enabled: map['enabled'] == null ? null : map['enabled']! as bool,
      port: map['port'] == null ? null : map['port']! as int,
    );
  }
}

