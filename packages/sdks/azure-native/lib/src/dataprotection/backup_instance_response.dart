// ignore_for_file: unused_element, unnecessary_cast

import 'datasource_response.dart';
import 'datasource_set_response.dart';
import 'identity_details_response.dart';
import 'policy_info_response.dart';
import 'protection_status_details_response.dart';
import 'secret_store_based_auth_credentials_response.dart';
import 'user_facing_error_response.dart';

/// Backup Instance
class BackupInstanceResponse {
  /// Specifies the current protection state of the resource
  final String currentProtectionState;
  /// Gets or sets the data source information.
  final DatasourceResponse dataSourceInfo;
  /// Gets or sets the data source set information.
  final DatasourceSetResponse? dataSourceSetInfo;
  /// Credentials to use to authenticate with data source provider.
  final SecretStoreBasedAuthCredentialsResponse? datasourceAuthCredentials;
  /// Gets or sets the Backup Instance friendly name.
  final String? friendlyName;
  /// Contains information of the Identity Details for the BI.
  /// If it is null, default will be considered as System Assigned.
  final IdentityDetailsResponse? identityDetails;
  final String objectType;
  /// Gets or sets the policy information.
  final PolicyInfoResponse policyInfo;
  /// Specifies the protection error of the resource
  final UserFacingErrorResponse protectionErrorDetails;
  /// Specifies the protection status of the resource
  final ProtectionStatusDetailsResponse protectionStatus;
  /// Specifies the provisioning state of the resource i.e. provisioning/updating/Succeeded/Failed
  final String provisioningState;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final List<String>? resourceGuardOperationRequests;
  /// Specifies the type of validation. In case of DeepValidation, all validations from /validateForBackup API will run again.
  final String? validationType;

  /// Creates a new [BackupInstanceResponse].
  /// [currentProtectionState] Specifies the current protection state of the resource
  /// [dataSourceInfo] Gets or sets the data source information.
  /// [dataSourceSetInfo] Gets or sets the data source set information.
  /// [datasourceAuthCredentials] Credentials to use to authenticate with data source provider.
  /// [friendlyName] Gets or sets the Backup Instance friendly name.
  /// [identityDetails] Contains information of the Identity Details for the BI.
  /// [objectType] Required.
  /// [policyInfo] Gets or sets the policy information.
  /// [protectionErrorDetails] Specifies the protection error of the resource
  /// [protectionStatus] Specifies the protection status of the resource
  /// [provisioningState] Specifies the provisioning state of the resource i.e. provisioning/updating/Succeeded/Failed
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [validationType] Specifies the type of validation. In case of DeepValidation, all validations from /validateForBackup API will run again.
  BackupInstanceResponse({
    required this.currentProtectionState,
    required this.dataSourceInfo,
    this.dataSourceSetInfo,
    this.datasourceAuthCredentials,
    this.friendlyName,
    this.identityDetails,
    required this.objectType,
    required this.policyInfo,
    required this.protectionErrorDetails,
    required this.protectionStatus,
    required this.provisioningState,
    this.resourceGuardOperationRequests,
    this.validationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentProtectionState': currentProtectionState,
      'dataSourceInfo': dataSourceInfo.toMap(),
      'dataSourceSetInfo': ?dataSourceSetInfo == null ? null : dataSourceSetInfo!.toMap(),
      'datasourceAuthCredentials': ?datasourceAuthCredentials == null ? null : datasourceAuthCredentials!.toMap(),
      'friendlyName': ?friendlyName,
      'identityDetails': ?identityDetails == null ? null : identityDetails!.toMap(),
      'objectType': objectType,
      'policyInfo': policyInfo.toMap(),
      'protectionErrorDetails': protectionErrorDetails.toMap(),
      'protectionStatus': protectionStatus.toMap(),
      'provisioningState': provisioningState,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'validationType': ?validationType,
    };
  }

  factory BackupInstanceResponse.fromMap(Map<String, dynamic> map) {
    return BackupInstanceResponse(
      currentProtectionState: map['currentProtectionState'] as String,
      dataSourceInfo: DatasourceResponse.fromMap((map['dataSourceInfo'] as Map).cast<String, dynamic>()),
      dataSourceSetInfo: map['dataSourceSetInfo'] == null ? null : DatasourceSetResponse.fromMap((map['dataSourceSetInfo'] as Map).cast<String, dynamic>()),
      datasourceAuthCredentials: map['datasourceAuthCredentials'] == null ? null : SecretStoreBasedAuthCredentialsResponse.fromMap((map['datasourceAuthCredentials'] as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      identityDetails: map['identityDetails'] == null ? null : IdentityDetailsResponse.fromMap((map['identityDetails'] as Map).cast<String, dynamic>()),
      objectType: map['objectType'] as String,
      policyInfo: PolicyInfoResponse.fromMap((map['policyInfo'] as Map).cast<String, dynamic>()),
      protectionErrorDetails: UserFacingErrorResponse.fromMap((map['protectionErrorDetails'] as Map).cast<String, dynamic>()),
      protectionStatus: ProtectionStatusDetailsResponse.fromMap((map['protectionStatus'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      validationType: map['validationType'] == null ? null : map['validationType'] as String,
    );
  }
}

