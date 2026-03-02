// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference_response.dart';

/// Log location settings.
class LogLocationSettingsResponse {
  /// Log storage linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;
  /// The path to storage for storing detailed logs of activity execution. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? path;

  /// Creates a new [LogLocationSettingsResponse].
  /// [linkedServiceName] Log storage linked service reference.
  /// [path] The path to storage for storing detailed logs of activity execution. Type: string (or Expression with resultType string).
  LogLocationSettingsResponse({
    required this.linkedServiceName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'path': ?path,
    };
  }

  factory LogLocationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LogLocationSettingsResponse(
      linkedServiceName: (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (map['path']!).input(),
    );
  }
}

