// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for copy activity log.
class CopyActivityLogSettingsResponse {
  /// Specifies whether to enable reliable logging. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableReliableLogging;
  /// Gets or sets the log level, support: Info, Warning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? logLevel;

  /// Creates a new [CopyActivityLogSettingsResponse].
  /// [enableReliableLogging] Specifies whether to enable reliable logging. Type: boolean (or Expression with resultType boolean).
  /// [logLevel] Gets or sets the log level, support: Info, Warning. Type: string (or Expression with resultType string).
  CopyActivityLogSettingsResponse({
    this.enableReliableLogging,
    this.logLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableReliableLogging': ?enableReliableLogging,
      'logLevel': ?logLevel,
    };
  }

  factory CopyActivityLogSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CopyActivityLogSettingsResponse(
      enableReliableLogging: map['enableReliableLogging'] == null ? null : (map['enableReliableLogging']).input(),
      logLevel: map['logLevel'] == null ? null : (map['logLevel']).input(),
    );
  }
}

