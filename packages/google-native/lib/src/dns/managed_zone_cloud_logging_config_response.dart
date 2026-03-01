// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Logging configurations for publicly visible zones.
class ManagedZoneCloudLoggingConfigResponse {
  /// If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  final bool enableLogging;
  final String kind;

  /// Creates a new [ManagedZoneCloudLoggingConfigResponse].
  /// [enableLogging] If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  /// [kind] Required.
  ManagedZoneCloudLoggingConfigResponse({
    required this.enableLogging,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableLogging': enableLogging, 'kind': kind};
  }

  factory ManagedZoneCloudLoggingConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZoneCloudLoggingConfigResponse(
      enableLogging: map['enableLogging'] as bool,
      kind: map['kind'] as String,
    );
  }
}
