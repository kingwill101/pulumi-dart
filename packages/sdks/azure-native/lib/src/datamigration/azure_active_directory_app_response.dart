// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Active Directory Application
class AzureActiveDirectoryAppResponse {
  /// Key used to authenticate to the Azure Active Directory Application
  final pulumi.Input<String>? appKey;
  /// Application ID of the Azure Active Directory Application
  final pulumi.Input<String>? applicationId;
  /// Ignore checking azure permissions on the AAD app
  final pulumi.Input<bool>? ignoreAzurePermissions;
  /// Tenant id of the customer
  final pulumi.Input<String>? tenantId;

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
      appKey: map['appKey'] == null ? null : (map['appKey'] as String).input(),
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      ignoreAzurePermissions: map['ignoreAzurePermissions'] == null ? null : (map['ignoreAzurePermissions'] as bool).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

