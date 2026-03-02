// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_configuration_execution_controls.dart';
import 'remediation_configuration_parameter.dart';

/// Input properties used for looking up and filtering RemediationConfiguration resources.
class RemediationConfigurationState {
  /// ARN of the Config Remediation Configuration.
  final pulumi.Input<String>? arn;
  /// Remediation is triggered automatically if `true`.
  final pulumi.Input<bool>? automatic;
  /// Name of the AWS Config rule.
  final pulumi.Input<String>? configRuleName;
  /// Configuration block for execution controls. See below.
  final pulumi.Input<RemediationConfigurationExecutionControls>? executionControls;
  /// Maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.
  final pulumi.Input<int>? maximumAutomaticAttempts;
  /// Can be specified multiple times for each parameter. Each parameter block supports arguments below.
  final pulumi.Input<List<RemediationConfigurationParameter>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of resource.
  final pulumi.Input<String>? resourceType;
  /// Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds.
  final pulumi.Input<int>? retryAttemptSeconds;
  /// Target ID is the name of the public document.
  final pulumi.Input<String>? targetId;
  /// Type of the target. Target executes remediation. For example, SSM document.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? targetType;
  /// Version of the target. For example, version of the SSM document
  final pulumi.Input<String>? targetVersion;

  /// Creates a new [RemediationConfigurationState].
  /// [arn] ARN of the Config Remediation Configuration.
  /// [automatic] Remediation is triggered automatically if `true`.
  /// [configRuleName] Name of the AWS Config rule.
  /// [executionControls] Configuration block for execution controls. See below.
  /// [maximumAutomaticAttempts] Maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.
  /// [parameters] Can be specified multiple times for each parameter. Each parameter block supports arguments below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceType] Type of resource.
  /// [retryAttemptSeconds] Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds.
  /// [targetId] Target ID is the name of the public document.
  /// [targetType] Type of the target. Target executes remediation. For example, SSM document.
  /// [targetVersion] Version of the target. For example, version of the SSM document
  RemediationConfigurationState({
    this.arn,
    this.automatic,
    this.configRuleName,
    this.executionControls,
    this.maximumAutomaticAttempts,
    this.parameters,
    this.region,
    this.resourceType,
    this.retryAttemptSeconds,
    this.targetId,
    this.targetType,
    this.targetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'automatic': ?automatic,
      'configRuleName': ?configRuleName,
      'executionControls': ?pulumi.Input.mapOptionalInputValue<RemediationConfigurationExecutionControls, Map<String, dynamic>>(executionControls, (value) => value.toMap()),
      'maximumAutomaticAttempts': ?maximumAutomaticAttempts,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RemediationConfigurationParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RemediationConfigurationParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'resourceType': ?resourceType,
      'retryAttemptSeconds': ?retryAttemptSeconds,
      'targetId': ?targetId,
      'targetType': ?targetType,
      'targetVersion': ?targetVersion,
    };
  }

  factory RemediationConfigurationState.fromMap(Map<String, dynamic> map) {
    return RemediationConfigurationState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      automatic: map['automatic'] == null ? null : ((map['automatic'] as bool).input()).input(),
      configRuleName: map['configRuleName'] == null ? null : ((map['configRuleName'] as String).input()).input(),
      executionControls: map['executionControls'] == null ? null : ((RemediationConfigurationExecutionControls.fromMap((map['executionControls']! as Map).cast<String, dynamic>())).input()).input(),
      maximumAutomaticAttempts: map['maximumAutomaticAttempts'] == null ? null : ((map['maximumAutomaticAttempts'] as int).input()).input(),
      parameters: map['parameters'] == null ? null : ((pulumi.Input.decodeList<RemediationConfigurationParameter>(map['parameters']!, (value) => RemediationConfigurationParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceType: map['resourceType'] == null ? null : ((map['resourceType'] as String).input()).input(),
      retryAttemptSeconds: map['retryAttemptSeconds'] == null ? null : ((map['retryAttemptSeconds'] as int).input()).input(),
      targetId: map['targetId'] == null ? null : ((map['targetId'] as String).input()).input(),
      targetType: map['targetType'] == null ? null : ((map['targetType'] as String).input()).input(),
      targetVersion: map['targetVersion'] == null ? null : ((map['targetVersion'] as String).input()).input(),
    );
  }
}

