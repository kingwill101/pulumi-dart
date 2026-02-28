// ignore_for_file: unused_element, unnecessary_cast


class AzureClusterAzureServicesAuthentication {
  /// The Azure Active Directory Application ID for Authentication configuration.
  final String applicationId;
  /// The Azure Active Directory Tenant ID for Authentication configuration.
  final String tenantId;

  /// Creates a new [AzureClusterAzureServicesAuthentication].
  /// [applicationId] The Azure Active Directory Application ID for Authentication configuration.
  /// [tenantId] The Azure Active Directory Tenant ID for Authentication configuration.
  AzureClusterAzureServicesAuthentication({
    required this.applicationId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'tenantId': tenantId,
    };
  }

  factory AzureClusterAzureServicesAuthentication.fromMap(Map<String, dynamic> map) {
    return AzureClusterAzureServicesAuthentication(
      applicationId: map['applicationId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

