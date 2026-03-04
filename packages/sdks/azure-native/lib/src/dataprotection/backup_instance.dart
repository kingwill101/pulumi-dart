// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datasource.dart';
import 'datasource_set.dart';
import 'identity_details.dart';
import 'policy_info.dart';
import 'secret_store_based_auth_credentials.dart';

/// Backup Instance
class BackupInstance {
  /// Gets or sets the data source information.
  final pulumi.Input<Datasource> dataSourceInfo;

  /// Gets or sets the data source set information.
  final pulumi.Input<DatasourceSet>? dataSourceSetInfo;

  /// Credentials to use to authenticate with data source provider.
  final pulumi.Input<SecretStoreBasedAuthCredentials>?
  datasourceAuthCredentials;

  /// Gets or sets the Backup Instance friendly name.
  final pulumi.Input<String>? friendlyName;

  /// Contains information of the Identity Details for the BI.
  /// If it is null, default will be considered as System Assigned.
  final pulumi.Input<IdentityDetails>? identityDetails;
  final pulumi.Input<String> objectType;

  /// Gets or sets the policy information.
  final pulumi.Input<PolicyInfo> policyInfo;

  /// ResourceGuardOperationRequests on which LAC check will be performed
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;

  /// Specifies the type of validation. In case of DeepValidation, all validations from /validateForBackup API will run again.
  final pulumi.Input<String>? validationType;

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
      'dataSourceInfo':
          pulumi.Input.mapInputValue<Datasource, Map<String, dynamic>>(
            dataSourceInfo,
            (value) => value.toMap(),
          ),
      'dataSourceSetInfo':
          ?pulumi.Input.mapOptionalInputValue<
            DatasourceSet,
            Map<String, dynamic>
          >(dataSourceSetInfo, (value) => value.toMap()),
      'datasourceAuthCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            SecretStoreBasedAuthCredentials,
            Map<String, dynamic>
          >(datasourceAuthCredentials, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'identityDetails':
          ?pulumi.Input.mapOptionalInputValue<
            IdentityDetails,
            Map<String, dynamic>
          >(identityDetails, (value) => value.toMap()),
      'objectType': objectType,
      'policyInfo':
          pulumi.Input.mapInputValue<PolicyInfo, Map<String, dynamic>>(
            policyInfo,
            (value) => value.toMap(),
          ),
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'validationType': ?validationType,
    };
  }

  factory BackupInstance.fromMap(Map<String, dynamic> map) {
    return BackupInstance(
      dataSourceInfo: pulumi.Input.fromValue(
        Datasource.fromMap(
          (map['dataSourceInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      dataSourceSetInfo: (() {
        final guardedValue = map['dataSourceSetInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatasourceSet.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      datasourceAuthCredentials: (() {
        final guardedValue = map['datasourceAuthCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecretStoreBasedAuthCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      friendlyName: (() {
        final guardedValue = map['friendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identityDetails: (() {
        final guardedValue = map['identityDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IdentityDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      policyInfo: pulumi.Input.fromValue(
        PolicyInfo.fromMap((map['policyInfo']! as Map).cast<String, dynamic>()),
      ),
      resourceGuardOperationRequests: (() {
        final guardedValue = map['resourceGuardOperationRequests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      validationType: (() {
        final guardedValue = map['validationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
