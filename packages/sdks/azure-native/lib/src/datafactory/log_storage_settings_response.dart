// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference_response.dart';

/// (Deprecated. Please use LogSettings) Log storage settings.
class LogStorageSettingsResponse {
  /// Specifies whether to enable reliable logging. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableReliableLogging;
  /// Log storage linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;
  /// Gets or sets the log level, support: Info, Warning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? logLevel;
  /// The path to storage for storing detailed logs of activity execution. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? path;

  /// Creates a new [LogStorageSettingsResponse].
  /// [enableReliableLogging] Specifies whether to enable reliable logging. Type: boolean (or Expression with resultType boolean).
  /// [linkedServiceName] Log storage linked service reference.
  /// [logLevel] Gets or sets the log level, support: Info, Warning. Type: string (or Expression with resultType string).
  /// [path] The path to storage for storing detailed logs of activity execution. Type: string (or Expression with resultType string).
  LogStorageSettingsResponse({
    this.enableReliableLogging,
    required this.linkedServiceName,
    this.logLevel,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableReliableLogging': ?enableReliableLogging,
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'logLevel': ?logLevel,
      'path': ?path,
    };
  }

  factory LogStorageSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LogStorageSettingsResponse(
      enableReliableLogging: map['enableReliableLogging'] == null ? null : (map['enableReliableLogging']).input(),
      linkedServiceName: (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      logLevel: map['logLevel'] == null ? null : (map['logLevel']).input(),
      path: map['path'] == null ? null : (map['path']).input(),
    );
  }
}

