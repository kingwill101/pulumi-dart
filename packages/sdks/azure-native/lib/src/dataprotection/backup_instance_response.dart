// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<String> currentProtectionState;
  /// Gets or sets the data source information.
  final pulumi.Input<DatasourceResponse> dataSourceInfo;
  /// Gets or sets the data source set information.
  final pulumi.Input<DatasourceSetResponse>? dataSourceSetInfo;
  /// Credentials to use to authenticate with data source provider.
  final pulumi.Input<SecretStoreBasedAuthCredentialsResponse>? datasourceAuthCredentials;
  /// Gets or sets the Backup Instance friendly name.
  final pulumi.Input<String>? friendlyName;
  /// Contains information of the Identity Details for the BI.
  /// If it is null, default will be considered as System Assigned.
  final pulumi.Input<IdentityDetailsResponse>? identityDetails;
  final pulumi.Input<String> objectType;
  /// Gets or sets the policy information.
  final pulumi.Input<PolicyInfoResponse> policyInfo;
  /// Specifies the protection error of the resource
  final pulumi.Input<UserFacingErrorResponse> protectionErrorDetails;
  /// Specifies the protection status of the resource
  final pulumi.Input<ProtectionStatusDetailsResponse> protectionStatus;
  /// Specifies the provisioning state of the resource i.e. provisioning/updating/Succeeded/Failed
  final pulumi.Input<String> provisioningState;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;
  /// Specifies the type of validation. In case of DeepValidation, all validations from /validateForBackup API will run again.
  final pulumi.Input<String>? validationType;

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
      'dataSourceInfo': pulumi.Input.mapInputValue<DatasourceResponse, Map<String, dynamic>>(dataSourceInfo, (value) => value.toMap()),
      'dataSourceSetInfo': ?pulumi.Input.mapOptionalInputValue<DatasourceSetResponse, Map<String, dynamic>>(dataSourceSetInfo, (value) => value.toMap()),
      'datasourceAuthCredentials': ?pulumi.Input.mapOptionalInputValue<SecretStoreBasedAuthCredentialsResponse, Map<String, dynamic>>(datasourceAuthCredentials, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'identityDetails': ?pulumi.Input.mapOptionalInputValue<IdentityDetailsResponse, Map<String, dynamic>>(identityDetails, (value) => value.toMap()),
      'objectType': objectType,
      'policyInfo': pulumi.Input.mapInputValue<PolicyInfoResponse, Map<String, dynamic>>(policyInfo, (value) => value.toMap()),
      'protectionErrorDetails': pulumi.Input.mapInputValue<UserFacingErrorResponse, Map<String, dynamic>>(protectionErrorDetails, (value) => value.toMap()),
      'protectionStatus': pulumi.Input.mapInputValue<ProtectionStatusDetailsResponse, Map<String, dynamic>>(protectionStatus, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'validationType': ?validationType,
    };
  }

  factory BackupInstanceResponse.fromMap(Map<String, dynamic> map) {
    return BackupInstanceResponse(
      currentProtectionState: pulumi.Input.fromValue(map['currentProtectionState'] as String),
      dataSourceInfo: pulumi.Input.fromValue(DatasourceResponse.fromMap((map['dataSourceInfo']! as Map).cast<String, dynamic>())),
      dataSourceSetInfo: (() { final guardedValue = map['dataSourceSetInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasourceSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datasourceAuthCredentials: (() { final guardedValue = map['datasourceAuthCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretStoreBasedAuthCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityDetails: (() { final guardedValue = map['identityDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      policyInfo: pulumi.Input.fromValue(PolicyInfoResponse.fromMap((map['policyInfo']! as Map).cast<String, dynamic>())),
      protectionErrorDetails: pulumi.Input.fromValue(UserFacingErrorResponse.fromMap((map['protectionErrorDetails']! as Map).cast<String, dynamic>())),
      protectionStatus: pulumi.Input.fromValue(ProtectionStatusDetailsResponse.fromMap((map['protectionStatus']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceGuardOperationRequests: (() { final guardedValue = map['resourceGuardOperationRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      validationType: (() { final guardedValue = map['validationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

