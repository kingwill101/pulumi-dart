// ignore_for_file: unused_element, unnecessary_cast

class RuntimeTemplateIdleShutdownConfig {
  /// The duration after which the runtime is automatically shut down. An input of 0s disables the idle shutdown feature, and a valid range is [10m, 24h].
  final String? idleTimeout;

  RuntimeTemplateIdleShutdownConfig({
    this.idleTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleTimeoutValue = idleTimeout;
    if (idleTimeoutValue != null) {
      map['idleTimeout'] = idleTimeoutValue;
    }
    return map;
  }

  factory RuntimeTemplateIdleShutdownConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateIdleShutdownConfig(
      idleTimeout:
          map['idleTimeout'] == null ? null : map['idleTimeout'] as String,
    );
  }
}
