// ignore_for_file: unused_element, unnecessary_cast


/// Customer-initiated diagnostic log collection storage properties
class DiagnosticStoragePropertiesResponse {
  /// Authentication Type
  final String authenticationType;
  /// ConnectionString of the diagnostic storage account
  final String? connectionString;
  /// ResourceId of the diagnostic storage account
  final String resourceId;

  /// Creates a new [DiagnosticStoragePropertiesResponse].
  /// [authenticationType] Authentication Type
  /// [connectionString] ConnectionString of the diagnostic storage account
  /// [resourceId] ResourceId of the diagnostic storage account
  DiagnosticStoragePropertiesResponse({
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
      authenticationType: map['authenticationType'] as String,
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

