// ignore_for_file: unused_element, unnecessary_cast

import 'linked_service_reference_response.dart';

/// Staging settings.
class StagingSettingsResponse {
  /// Specifies whether to use compression when copying data via an interim staging. Default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic enableCompression;
  /// Staging linked service reference.
  final LinkedServiceReferenceResponse linkedServiceName;
  /// The path to storage for storing the interim data. Type: string (or Expression with resultType string).
  final dynamic path;

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
      'linkedServiceName': linkedServiceName.toMap(),
      'path': ?path,
    };
  }

  factory StagingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return StagingSettingsResponse(
      enableCompression: map['enableCompression'] == null ? null : map['enableCompression'],
      linkedServiceName: LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'],
    );
  }
}

