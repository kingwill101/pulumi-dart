// ignore_for_file: unused_element, unnecessary_cast


/// Customer-initiated diagnostic log collection storage properties
class DiagnosticStorageProperties {
  /// Authentication Type
  final String authenticationType;
  /// ConnectionString of the diagnostic storage account
  final String? connectionString;
  /// ResourceId of the diagnostic storage account
  final String resourceId;

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
      authenticationType: map['authenticationType'] as String,
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

