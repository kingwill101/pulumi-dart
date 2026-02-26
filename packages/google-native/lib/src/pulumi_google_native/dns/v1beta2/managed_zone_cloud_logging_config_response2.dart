// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Logging configurations for publicly visible zones.
class ManagedZoneCloudLoggingConfigResponse2 {
  /// If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  final bool enableLogging;
  final String kind;

  ManagedZoneCloudLoggingConfigResponse2({
    required this.enableLogging,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableLogging'] = enableLogging;
    map['kind'] = kind;
    return map;
  }

  factory ManagedZoneCloudLoggingConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneCloudLoggingConfigResponse2(
      enableLogging: map['enableLogging'] as bool,
      kind: map['kind'] as String,
    );
  }
}
