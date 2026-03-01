// ignore_for_file: unused_element, unnecessary_cast


/// Settings for copy activity log.
class CopyActivityLogSettings {
  /// Specifies whether to enable reliable logging. Type: boolean (or Expression with resultType boolean).
  final dynamic enableReliableLogging;
  /// Gets or sets the log level, support: Info, Warning. Type: string (or Expression with resultType string).
  final dynamic logLevel;

  /// Creates a new [CopyActivityLogSettings].
  /// [enableReliableLogging] Specifies whether to enable reliable logging. Type: boolean (or Expression with resultType boolean).
  /// [logLevel] Gets or sets the log level, support: Info, Warning. Type: string (or Expression with resultType string).
  CopyActivityLogSettings({
    this.enableReliableLogging,
    this.logLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableReliableLogging': ?enableReliableLogging,
      'logLevel': ?logLevel,
    };
  }

  factory CopyActivityLogSettings.fromMap(Map<String, dynamic> map) {
    return CopyActivityLogSettings(
      enableReliableLogging: map['enableReliableLogging'] == null ? null : map['enableReliableLogging'],
      logLevel: map['logLevel'] == null ? null : map['logLevel'],
    );
  }
}

