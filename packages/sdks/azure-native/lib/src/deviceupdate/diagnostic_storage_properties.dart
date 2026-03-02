// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Customer-initiated diagnostic log collection storage properties
class DiagnosticStorageProperties {
  /// Authentication Type
  final pulumi.Input<String> authenticationType;
  /// ConnectionString of the diagnostic storage account
  final pulumi.Input<String>? connectionString;
  /// ResourceId of the diagnostic storage account
  final pulumi.Input<String> resourceId;

  /// Creates a new [DiagnosticStorageProperties].
  /// [authenticationType] Authentication Type
  /// [connectionString] ConnectionString of the diagnostic storage account
  /// [resourceId] ResourceId of the diagnostic storage account
  DiagnosticStorageProperties({
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

  factory DiagnosticStorageProperties.fromMap(Map<String, dynamic> map) {
    return DiagnosticStorageProperties(
      authenticationType: (map['authenticationType'] as String).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      resourceId: (map['resourceId'] as String).input(),
    );
  }
}

