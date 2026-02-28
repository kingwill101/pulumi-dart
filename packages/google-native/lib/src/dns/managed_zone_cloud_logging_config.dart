// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Logging configurations for publicly visible zones.
class ManagedZoneCloudLoggingConfig {
  /// If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  final bool? enableLogging;
  final String? kind;

  /// Creates a new [ManagedZoneCloudLoggingConfig].
  /// [enableLogging] If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  /// [kind] Optional.
  ManagedZoneCloudLoggingConfig({
    this.enableLogging,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableLoggingValue = enableLogging;
    if (enableLoggingValue != null) {
      map['enableLogging'] = enableLoggingValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    return map;
  }

  factory ManagedZoneCloudLoggingConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneCloudLoggingConfig(
      enableLogging:
          map['enableLogging'] == null ? null : map['enableLogging'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
