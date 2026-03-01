// ignore_for_file: unused_element, unnecessary_cast

import 'linked_service_reference_response.dart';

/// Log location settings.
class LogLocationSettingsResponse {
  /// Log storage linked service reference.
  final LinkedServiceReferenceResponse linkedServiceName;
  /// The path to storage for storing detailed logs of activity execution. Type: string (or Expression with resultType string).
  final dynamic path;

  /// Creates a new [LogLocationSettingsResponse].
  /// [linkedServiceName] Log storage linked service reference.
  /// [path] The path to storage for storing detailed logs of activity execution. Type: string (or Expression with resultType string).
  LogLocationSettingsResponse({
    required this.linkedServiceName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': linkedServiceName.toMap(),
      'path': ?path,
    };
  }

  factory LogLocationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LogLocationSettingsResponse(
      linkedServiceName: LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'],
    );
  }
}

