// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Logging configurations for publicly visible zones.
class ManagedZoneCloudLoggingConfigResponseDnsV1beta2 {
  /// If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  final bool enableLogging;
  final String kind;

  /// Creates a new [ManagedZoneCloudLoggingConfigResponseDnsV1beta2].
  /// [enableLogging] If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  /// [kind] Required.
  ManagedZoneCloudLoggingConfigResponseDnsV1beta2({
    required this.enableLogging,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableLogging'] = enableLogging;
    map['kind'] = kind;
    return map;
  }

  factory ManagedZoneCloudLoggingConfigResponseDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneCloudLoggingConfigResponseDnsV1beta2(
      enableLogging: map['enableLogging'] as bool,
      kind: map['kind'] as String,
    );
  }
}
