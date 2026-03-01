// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_configuration_execution_controls.dart';
import 'remediation_configuration_parameter.dart';

/// {@template pulumi_cfg_remediation_configuration_remediation_configuration_args_doc}
/// The set of arguments for RemediationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_cfg_remediation_configuration_remediation_configuration_args_doc}
class RemediationConfigurationArgs {
  /// Remediation is triggered automatically if `true`.
  final pulumi.Input<bool>? automatic;
  /// Name of the AWS Config rule.
  final pulumi.Input<String> configRuleName;
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
  final pulumi.Input<String> targetId;
  /// Type of the target. Target executes remediation. For example, SSM document.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> targetType;
  /// Version of the target. For example, version of the SSM document
  final pulumi.Input<String>? targetVersion;

  /// Creates a new [RemediationConfigurationArgs].
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
  RemediationConfigurationArgs({
    pulumi.Output<bool>? automatic,
    required pulumi.Output<String> configRuleName,
    pulumi.Output<RemediationConfigurationExecutionControls>? executionControls,
    pulumi.Output<int>? maximumAutomaticAttempts,
    pulumi.Output<List<RemediationConfigurationParameter>>? parameters,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceType,
    pulumi.Output<int>? retryAttemptSeconds,
    required pulumi.Output<String> targetId,
    required pulumi.Output<String> targetType,
    pulumi.Output<String>? targetVersion,
  }) :
      automatic = pulumi.Input.asOptionalInput<bool>(automatic),
      configRuleName = pulumi.Input.asInput<String>(configRuleName),
      executionControls = pulumi.Input.asOptionalInput<RemediationConfigurationExecutionControls>(executionControls),
      maximumAutomaticAttempts = pulumi.Input.asOptionalInput<int>(maximumAutomaticAttempts),
      parameters = pulumi.Input.asOptionalInput<List<RemediationConfigurationParameter>>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      retryAttemptSeconds = pulumi.Input.asOptionalInput<int>(retryAttemptSeconds),
      targetId = pulumi.Input.asInput<String>(targetId),
      targetType = pulumi.Input.asInput<String>(targetType),
      targetVersion = pulumi.Input.asOptionalInput<String>(targetVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': ?automatic,
      'configRuleName': configRuleName,
      'executionControls': ?pulumi.Input.mapOptionalInputValue<RemediationConfigurationExecutionControls, Map<String, dynamic>>(executionControls, (value) => value.toMap()),
      'maximumAutomaticAttempts': ?maximumAutomaticAttempts,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RemediationConfigurationParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RemediationConfigurationParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'resourceType': ?resourceType,
      'retryAttemptSeconds': ?retryAttemptSeconds,
      'targetId': targetId,
      'targetType': targetType,
      'targetVersion': ?targetVersion,
    };
  }

  factory RemediationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return RemediationConfigurationArgs(
      automatic: map['automatic'] == null ? null : pulumi.Output.create<bool>(map['automatic'] as bool),
      configRuleName: pulumi.Output.create<String>(map['configRuleName'] as String),
      executionControls: map['executionControls'] == null ? null : pulumi.Output.create<RemediationConfigurationExecutionControls>(RemediationConfigurationExecutionControls.fromMap((map['executionControls'] as Map).cast<String, dynamic>())),
      maximumAutomaticAttempts: map['maximumAutomaticAttempts'] == null ? null : pulumi.Output.create<int>(map['maximumAutomaticAttempts'] as int),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<RemediationConfigurationParameter>>(pulumi.Input.decodeList<RemediationConfigurationParameter>(map['parameters'], (value) => RemediationConfigurationParameter.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      retryAttemptSeconds: map['retryAttemptSeconds'] == null ? null : pulumi.Output.create<int>(map['retryAttemptSeconds'] as int),
      targetId: pulumi.Output.create<String>(map['targetId'] as String),
      targetType: pulumi.Output.create<String>(map['targetType'] as String),
      targetVersion: map['targetVersion'] == null ? null : pulumi.Output.create<String>(map['targetVersion'] as String),
    );
  }
}

