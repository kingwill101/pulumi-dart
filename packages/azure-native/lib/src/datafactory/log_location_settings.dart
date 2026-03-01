// ignore_for_file: unused_element, unnecessary_cast

import 'linked_service_reference.dart';

/// Log location settings.
class LogLocationSettings {
  /// Log storage linked service reference.
  final LinkedServiceReference linkedServiceName;
  /// The path to storage for storing detailed logs of activity execution. Type: string (or Expression with resultType string).
  final dynamic path;

  /// Creates a new [LogLocationSettings].
  /// [linkedServiceName] Log storage linked service reference.
  /// [path] The path to storage for storing detailed logs of activity execution. Type: string (or Expression with resultType string).
  LogLocationSettings({
    required this.linkedServiceName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName.toMap(),
      'path': ?path,
    };
  }

  factory LogLocationSettings.fromMap(Map<String, dynamic> map) {
    return LogLocationSettings(
      linkedServiceName: LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'],
    );
  }
}

