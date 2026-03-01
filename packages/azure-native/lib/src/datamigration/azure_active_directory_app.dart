// ignore_for_file: unused_element, unnecessary_cast


/// Azure Active Directory Application
class AzureActiveDirectoryApp {
  /// Key used to authenticate to the Azure Active Directory Application
  final String? appKey;
  /// Application ID of the Azure Active Directory Application
  final String? applicationId;
  /// Ignore checking azure permissions on the AAD app
  final bool? ignoreAzurePermissions;
  /// Tenant id of the customer
  final String? tenantId;

  /// Creates a new [AzureActiveDirectoryApp].
  /// [appKey] Key used to authenticate to the Azure Active Directory Application
  /// [applicationId] Application ID of the Azure Active Directory Application
  /// [ignoreAzurePermissions] Ignore checking azure permissions on the AAD app
  /// [tenantId] Tenant id of the customer
  AzureActiveDirectoryApp({
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

  factory AzureActiveDirectoryApp.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectoryApp(
      appKey: map['appKey'] == null ? null : map['appKey'] as String,
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      ignoreAzurePermissions: map['ignoreAzurePermissions'] == null ? null : map['ignoreAzurePermissions'] as bool,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

