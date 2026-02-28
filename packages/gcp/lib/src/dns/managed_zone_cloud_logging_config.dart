// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneCloudLoggingConfig {
  /// If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  final bool enableLogging;

  /// Creates a new [ManagedZoneCloudLoggingConfig].
  /// [enableLogging] If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  ManagedZoneCloudLoggingConfig({
    required this.enableLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableLogging'] = enableLogging;
    return map;
  }

  factory ManagedZoneCloudLoggingConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneCloudLoggingConfig(
      enableLogging: map['enableLogging'] as bool,
    );
  }
}
