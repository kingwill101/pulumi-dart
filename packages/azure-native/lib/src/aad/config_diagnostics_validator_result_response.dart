// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_diagnostics_validator_result_issue_response.dart';

/// Config Diagnostics validator result data
class ConfigDiagnosticsValidatorResultResponse {
  /// List of resource config validation issues.
  final List<ConfigDiagnosticsValidatorResultIssueResponse>? issues;
  /// Replica set location and subnet name
  final String? replicaSetSubnetDisplayName;
  /// Status for individual validator after running diagnostics.
  final String? status;
  /// Validator identifier
  final String? validatorId;

  /// Creates a new [ConfigDiagnosticsValidatorResultResponse].
  /// [issues] List of resource config validation issues.
  /// [replicaSetSubnetDisplayName] Replica set location and subnet name
  /// [status] Status for individual validator after running diagnostics.
  /// [validatorId] Validator identifier
  ConfigDiagnosticsValidatorResultResponse({
    this.issues,
    this.replicaSetSubnetDisplayName,
    this.status,
    this.validatorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issues': ?issues == null ? null : pulumi.Input.encodeList<ConfigDiagnosticsValidatorResultIssueResponse, Map<String, dynamic>>(issues!, (value) => value.toMap()),
      'replicaSetSubnetDisplayName': ?replicaSetSubnetDisplayName,
      'status': ?status,
      'validatorId': ?validatorId,
    };
  }

  factory ConfigDiagnosticsValidatorResultResponse.fromMap(Map<String, dynamic> map) {
    return ConfigDiagnosticsValidatorResultResponse(
      issues: map['issues'] == null ? null : pulumi.Input.decodeList<ConfigDiagnosticsValidatorResultIssueResponse>(map['issues'], (value) => ConfigDiagnosticsValidatorResultIssueResponse.fromMap((value as Map).cast<String, dynamic>())),
      replicaSetSubnetDisplayName: map['replicaSetSubnetDisplayName'] == null ? null : map['replicaSetSubnetDisplayName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      validatorId: map['validatorId'] == null ? null : map['validatorId'] as String,
    );
  }
}

