// ignore_for_file: unused_element, unnecessary_cast

import 'linked_service_reference.dart';

/// (Deprecated. Please use LogSettings) Log storage settings.
class LogStorageSettings {
  /// Specifies whether to enable reliable logging. Type: boolean (or Expression with resultType boolean).
  final dynamic enableReliableLogging;
  /// Log storage linked service reference.
  final LinkedServiceReference linkedServiceName;
  /// Gets or sets the log level, support: Info, Warning. Type: string (or Expression with resultType string).
  final dynamic logLevel;
  /// The path to storage for storing detailed logs of activity execution. Type: string (or Expression with resultType string).
  final dynamic path;

  /// Creates a new [LogStorageSettings].
  /// [enableReliableLogging] Specifies whether to enable reliable logging. Type: boolean (or Expression with resultType boolean).
  /// [linkedServiceName] Log storage linked service reference.
  /// [logLevel] Gets or sets the log level, support: Info, Warning. Type: string (or Expression with resultType string).
  /// [path] The path to storage for storing detailed logs of activity execution. Type: string (or Expression with resultType string).
  LogStorageSettings({
    this.enableReliableLogging,
    required this.linkedServiceName,
    this.logLevel,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableReliableLogging': ?enableReliableLogging,
      'linkedServiceName': linkedServiceName.toMap(),
      'logLevel': ?logLevel,
      'path': ?path,
    };
  }

  factory LogStorageSettings.fromMap(Map<String, dynamic> map) {
    return LogStorageSettings(
      enableReliableLogging: map['enableReliableLogging'] == null ? null : map['enableReliableLogging'],
      linkedServiceName: LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      logLevel: map['logLevel'] == null ? null : map['logLevel'],
      path: map['path'] == null ? null : map['path'],
    );
  }
}

