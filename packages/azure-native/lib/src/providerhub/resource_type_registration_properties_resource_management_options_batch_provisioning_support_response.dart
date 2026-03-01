// ignore_for_file: unused_element, unnecessary_cast


/// Batch provisioning support.
class ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse {
  /// Supported operations.
  final String? supportedOperations;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse].
  /// [supportedOperations] Supported operations.
  ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse({
    this.supportedOperations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedOperations': ?supportedOperations,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceManagementOptionsBatchProvisioningSupportResponse(
      supportedOperations: map['supportedOperations'] == null ? null : map['supportedOperations'] as String,
    );
  }
}

