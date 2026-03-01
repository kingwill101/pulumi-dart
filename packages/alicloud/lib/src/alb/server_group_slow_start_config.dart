// ignore_for_file: unused_element, unnecessary_cast


class ServerGroupSlowStartConfig {
  /// The duration of a slow start.
  ///
  /// Valid values: 30 to 900.
  ///
  /// Default value: 30.
  final int? slowStartDuration;
  /// Indicates whether slow starts are enabled. Valid values:
  final bool? slowStartEnabled;

  /// Creates a new [ServerGroupSlowStartConfig].
  /// [slowStartDuration] The duration of a slow start.
  /// [slowStartEnabled] Indicates whether slow starts are enabled. Valid values:
  ServerGroupSlowStartConfig({
    this.slowStartDuration,
    this.slowStartEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slowStartDuration': ?slowStartDuration,
      'slowStartEnabled': ?slowStartEnabled,
    };
  }

  factory ServerGroupSlowStartConfig.fromMap(Map<String, dynamic> map) {
    return ServerGroupSlowStartConfig(
      slowStartDuration: map['slowStartDuration'] == null ? null : map['slowStartDuration'] as int,
      slowStartEnabled: map['slowStartEnabled'] == null ? null : map['slowStartEnabled'] as bool,
    );
  }
}

