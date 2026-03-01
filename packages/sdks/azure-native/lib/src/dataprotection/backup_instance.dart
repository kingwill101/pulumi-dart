// ignore_for_file: unused_element, unnecessary_cast

import 'datasource.dart';
import 'datasource_set.dart';
import 'identity_details.dart';
import 'policy_info.dart';
import 'secret_store_based_auth_credentials.dart';

/// Backup Instance
class BackupInstance {
  /// Gets or sets the data source information.
  final Datasource dataSourceInfo;
  /// Gets or sets the data source set information.
  final DatasourceSet? dataSourceSetInfo;
  /// Credentials to use to authenticate with data source provider.
  final SecretStoreBasedAuthCredentials? datasourceAuthCredentials;
  /// Gets or sets the Backup Instance friendly name.
  final String? friendlyName;
  /// Contains information of the Identity Details for the BI.
  /// If it is null, default will be considered as System Assigned.
  final IdentityDetails? identityDetails;
  final String objectType;
  /// Gets or sets the policy information.
  final PolicyInfo policyInfo;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final List<String>? resourceGuardOperationRequests;
  /// Specifies the type of validation. In case of DeepValidation, all validations from /validateForBackup API will run again.
  final String? validationType;

  /// Creates a new [BackupInstance].
  /// [dataSourceInfo] Gets or sets the data source information.
  /// [dataSourceSetInfo] Gets or sets the data source set information.
  /// [datasourceAuthCredentials] Credentials to use to authenticate with data source provider.
  /// [friendlyName] Gets or sets the Backup Instance friendly name.
  /// [identityDetails] Contains information of the Identity Details for the BI.
  /// [objectType] Required.
  /// [policyInfo] Gets or sets the policy information.
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [validationType] Specifies the type of validation. In case of DeepValidation, all validations from /validateForBackup API will run again.
  BackupInstance({
    required this.dataSourceInfo,
    this.dataSourceSetInfo,
    this.datasourceAuthCredentials,
    this.friendlyName,
    this.identityDetails,
    required this.objectType,
    required this.policyInfo,
    this.resourceGuardOperationRequests,
    this.validationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceInfo': dataSourceInfo.toMap(),
      'dataSourceSetInfo': ?dataSourceSetInfo == null ? null : dataSourceSetInfo!.toMap(),
      'datasourceAuthCredentials': ?datasourceAuthCredentials == null ? null : datasourceAuthCredentials!.toMap(),
      'friendlyName': ?friendlyName,
      'identityDetails': ?identityDetails == null ? null : identityDetails!.toMap(),
      'objectType': objectType,
      'policyInfo': policyInfo.toMap(),
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'validationType': ?validationType,
    };
  }

  factory BackupInstance.fromMap(Map<String, dynamic> map) {
    return BackupInstance(
      dataSourceInfo: Datasource.fromMap((map['dataSourceInfo'] as Map).cast<String, dynamic>()),
      dataSourceSetInfo: map['dataSourceSetInfo'] == null ? null : DatasourceSet.fromMap((map['dataSourceSetInfo'] as Map).cast<String, dynamic>()),
      datasourceAuthCredentials: map['datasourceAuthCredentials'] == null ? null : SecretStoreBasedAuthCredentials.fromMap((map['datasourceAuthCredentials'] as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      identityDetails: map['identityDetails'] == null ? null : IdentityDetails.fromMap((map['identityDetails'] as Map).cast<String, dynamic>()),
      objectType: map['objectType'] as String,
      policyInfo: PolicyInfo.fromMap((map['policyInfo'] as Map).cast<String, dynamic>()),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      validationType: map['validationType'] == null ? null : map['validationType'] as String,
    );
  }
}

