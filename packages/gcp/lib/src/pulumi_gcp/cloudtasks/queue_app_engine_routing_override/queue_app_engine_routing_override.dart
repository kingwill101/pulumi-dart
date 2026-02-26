// ignore_for_file: unused_element, unnecessary_cast

class QueueAppEngineRoutingOverride {
  /// (Output)
  /// The host that the task is sent to.
  final String? host;

  /// App instance.
  /// By default, the task is sent to an instance which is available when the task is attempted.
  final String? instance;

  /// App service.
  /// By default, the task is sent to the service which is the default service when the task is attempted.
  final String? service;

  /// App version.
  /// By default, the task is sent to the version which is the default version when the task is attempted.
  final String? version;

  QueueAppEngineRoutingOverride({
    this.host,
    this.instance,
    this.service,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    final instanceValue = instance;
    if (instanceValue != null) {
      map['instance'] = instanceValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory QueueAppEngineRoutingOverride.fromMap(Map<String, dynamic> map) {
    return QueueAppEngineRoutingOverride(
      host: map['host'] == null ? null : map['host'] as String,
      instance: map['instance'] == null ? null : map['instance'] as String,
      service: map['service'] == null ? null : map['service'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
