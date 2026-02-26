// ignore_for_file: unused_element, unnecessary_cast

class AzureClusterAzureServicesAuthentication {
  /// The Azure Active Directory Application ID for Authentication configuration.
  final String applicationId;

  /// The Azure Active Directory Tenant ID for Authentication configuration.
  final String tenantId;

  AzureClusterAzureServicesAuthentication({
    required this.applicationId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['tenantId'] = tenantId;
    return map;
  }

  factory AzureClusterAzureServicesAuthentication.fromMap(
      Map<String, dynamic> map) {
    return AzureClusterAzureServicesAuthentication(
      applicationId: map['applicationId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}
