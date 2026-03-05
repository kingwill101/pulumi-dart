// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_diagnostics_validator_result_issue_response.dart';

/// Config Diagnostics validator result data
class ConfigDiagnosticsValidatorResultResponse {
  /// List of resource config validation issues.
  final pulumi.Input<List<ConfigDiagnosticsValidatorResultIssueResponse>>? issues;
  /// Replica set location and subnet name
  final pulumi.Input<String>? replicaSetSubnetDisplayName;
  /// Status for individual validator after running diagnostics.
  final pulumi.Input<String>? status;
  /// Validator identifier
  final pulumi.Input<String>? validatorId;

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
      'issues': ?pulumi.Input.mapOptionalInputValue<List<ConfigDiagnosticsValidatorResultIssueResponse>, List<Map<String, dynamic>>>(issues, (value) => pulumi.Input.encodeList<ConfigDiagnosticsValidatorResultIssueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaSetSubnetDisplayName': ?replicaSetSubnetDisplayName,
      'status': ?status,
      'validatorId': ?validatorId,
    };
  }

  factory ConfigDiagnosticsValidatorResultResponse.fromMap(Map<String, dynamic> map) {
    return ConfigDiagnosticsValidatorResultResponse(
      issues: (() { final guardedValue = map['issues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigDiagnosticsValidatorResultIssueResponse>(guardedValue, (value) => ConfigDiagnosticsValidatorResultIssueResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      replicaSetSubnetDisplayName: (() { final guardedValue = map['replicaSetSubnetDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validatorId: (() { final guardedValue = map['validatorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

