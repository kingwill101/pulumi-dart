// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Customer-initiated diagnostic log collection storage properties
class DiagnosticStoragePropertiesResponse {
  /// Authentication Type
  final pulumi.Input<String> authenticationType;
  /// ConnectionString of the diagnostic storage account
  final pulumi.Input<String>? connectionString;
  /// ResourceId of the diagnostic storage account
  final pulumi.Input<String> resourceId;

  /// Creates a new [DiagnosticStoragePropertiesResponse].
  /// [authenticationType] Authentication Type
  /// [connectionString] ConnectionString of the diagnostic storage account
  /// [resourceId] ResourceId of the diagnostic storage account
  const DiagnosticStoragePropertiesResponse({
    required this.authenticationType,
    this.connectionString,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'connectionString': ?connectionString,
      'resourceId': resourceId,
    };
  }

  factory DiagnosticStoragePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DiagnosticStoragePropertiesResponse(
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

