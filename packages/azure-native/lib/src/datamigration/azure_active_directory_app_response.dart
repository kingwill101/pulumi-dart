// ignore_for_file: unused_element, unnecessary_cast


/// Azure Active Directory Application
class AzureActiveDirectoryAppResponse {
  /// Key used to authenticate to the Azure Active Directory Application
  final String? appKey;
  /// Application ID of the Azure Active Directory Application
  final String? applicationId;
  /// Ignore checking azure permissions on the AAD app
  final bool? ignoreAzurePermissions;
  /// Tenant id of the customer
  final String? tenantId;

  /// Creates a new [AzureActiveDirectoryAppResponse].
  /// [appKey] Key used to authenticate to the Azure Active Directory Application
  /// [applicationId] Application ID of the Azure Active Directory Application
  /// [ignoreAzurePermissions] Ignore checking azure permissions on the AAD app
  /// [tenantId] Tenant id of the customer
  AzureActiveDirectoryAppResponse({
    this.appKey,
    this.applicationId,
    this.ignoreAzurePermissions,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appKey': ?appKey,
      'applicationId': ?applicationId,
      'ignoreAzurePermissions': ?ignoreAzurePermissions,
      'tenantId': ?tenantId,
    };
  }

  factory AzureActiveDirectoryAppResponse.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectoryAppResponse(
      appKey: map['appKey'] == null ? null : map['appKey'] as String,
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      ignoreAzurePermissions: map['ignoreAzurePermissions'] == null ? null : map['ignoreAzurePermissions'] as bool,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

