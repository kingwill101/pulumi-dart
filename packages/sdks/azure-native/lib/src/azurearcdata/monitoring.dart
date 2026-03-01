// ignore_for_file: unused_element, unnecessary_cast


/// The monitoring configuration.
class Monitoring {
  /// Indicates if monitoring is enabled for this SQL Server instance.
  final bool? enabled;

  /// Creates a new [Monitoring].
  /// [enabled] Indicates if monitoring is enabled for this SQL Server instance.
  Monitoring({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory Monitoring.fromMap(Map<String, dynamic> map) {
    return Monitoring(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

