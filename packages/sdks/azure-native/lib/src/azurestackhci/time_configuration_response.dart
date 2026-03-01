// ignore_for_file: unused_element, unnecessary_cast


/// Time configuration.
class TimeConfigurationResponse {
  /// Primary NTP server.
  final String? primaryTimeServer;
  /// Secondary NTP server.
  final String? secondaryTimeServer;
  /// Time zone.
  final String? timeZone;

  /// Creates a new [TimeConfigurationResponse].
  /// [primaryTimeServer] Primary NTP server.
  /// [secondaryTimeServer] Secondary NTP server.
  /// [timeZone] Time zone.
  TimeConfigurationResponse({
    this.primaryTimeServer,
    this.secondaryTimeServer,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryTimeServer': ?primaryTimeServer,
      'secondaryTimeServer': ?secondaryTimeServer,
      'timeZone': ?timeZone,
    };
  }

  factory TimeConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TimeConfigurationResponse(
      primaryTimeServer: map['primaryTimeServer'] == null ? null : map['primaryTimeServer'] as String,
      secondaryTimeServer: map['secondaryTimeServer'] == null ? null : map['secondaryTimeServer'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

