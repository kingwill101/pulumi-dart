// ignore_for_file: unused_element, unnecessary_cast


/// The monitoring configuration.
class MonitoringResponse {
  /// Indicates if monitoring is enabled for this SQL Server instance.
  final bool? enabled;

  /// Creates a new [MonitoringResponse].
  /// [enabled] Indicates if monitoring is enabled for this SQL Server instance.
  MonitoringResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory MonitoringResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

