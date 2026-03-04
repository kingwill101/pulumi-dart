// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_diagnostics_validator_result_issue.dart';

/// Config Diagnostics validator result data
class ConfigDiagnosticsValidatorResult {
  /// List of resource config validation issues.
  final pulumi.Input<List<ConfigDiagnosticsValidatorResultIssue>>? issues;

  /// Replica set location and subnet name
  final pulumi.Input<String>? replicaSetSubnetDisplayName;

  /// Status for individual validator after running diagnostics.
  final pulumi.Input<String>? status;

  /// Validator identifier
  final pulumi.Input<String>? validatorId;

  /// Creates a new [ConfigDiagnosticsValidatorResult].
  /// [issues] List of resource config validation issues.
  /// [replicaSetSubnetDisplayName] Replica set location and subnet name
  /// [status] Status for individual validator after running diagnostics.
  /// [validatorId] Validator identifier
  ConfigDiagnosticsValidatorResult({
    this.issues,
    this.replicaSetSubnetDisplayName,
    this.status,
    this.validatorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issues':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConfigDiagnosticsValidatorResultIssue>,
            List<Map<String, dynamic>>
          >(
            issues,
            (value) =>
                pulumi.Input.encodeList<
                  ConfigDiagnosticsValidatorResultIssue,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'replicaSetSubnetDisplayName': ?replicaSetSubnetDisplayName,
      'status': ?status,
      'validatorId': ?validatorId,
    };
  }

  factory ConfigDiagnosticsValidatorResult.fromMap(Map<String, dynamic> map) {
    return ConfigDiagnosticsValidatorResult(
      issues: (() {
        final guardedValue = map['issues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConfigDiagnosticsValidatorResultIssue>(
            guardedValue,
            (value) => ConfigDiagnosticsValidatorResultIssue.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      replicaSetSubnetDisplayName: (() {
        final guardedValue = map['replicaSetSubnetDisplayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validatorId: (() {
        final guardedValue = map['validatorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
