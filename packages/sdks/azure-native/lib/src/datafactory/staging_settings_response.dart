// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference_response.dart';

/// Staging settings.
class StagingSettingsResponse {
  /// Specifies whether to use compression when copying data via an interim staging. Default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableCompression;
  /// Staging linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;
  /// The path to storage for storing the interim data. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? path;

  /// Creates a new [StagingSettingsResponse].
  /// [enableCompression] Specifies whether to use compression when copying data via an interim staging. Default value is false. Type: boolean (or Expression with resultType boolean).
  /// [linkedServiceName] Staging linked service reference.
  /// [path] The path to storage for storing the interim data. Type: string (or Expression with resultType string).
  StagingSettingsResponse({
    this.enableCompression,
    required this.linkedServiceName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCompression': ?enableCompression,
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'path': ?path,
    };
  }

  factory StagingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return StagingSettingsResponse(
      enableCompression: map['enableCompression'] == null ? null : (map['enableCompression']!).input(),
      linkedServiceName: (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (map['path']!).input(),
    );
  }
}

