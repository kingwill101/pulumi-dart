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
  final pulumi.Input<RemediationConfigurationExecutionControls>?
      executionControls;

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
    bool? automatic,
    required String configRuleName,
    RemediationConfigurationExecutionControls? executionControls,
    int? maximumAutomaticAttempts,
    List<RemediationConfigurationParameter>? parameters,
    String? region,
    String? resourceType,
    int? retryAttemptSeconds,
    required String targetId,
    required String targetType,
    String? targetVersion,
  })  : automatic = pulumi.Input.asOptionalInput<bool>(automatic),
        configRuleName = pulumi.Input.asInput<String>(configRuleName),
        executionControls = pulumi.Input.asOptionalInput<
            RemediationConfigurationExecutionControls>(executionControls),
        maximumAutomaticAttempts =
            pulumi.Input.asOptionalInput<int>(maximumAutomaticAttempts),
        parameters = pulumi.Input.asOptionalInput<
            List<RemediationConfigurationParameter>>(parameters),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
        retryAttemptSeconds =
            pulumi.Input.asOptionalInput<int>(retryAttemptSeconds),
        targetId = pulumi.Input.asInput<String>(targetId),
        targetType = pulumi.Input.asInput<String>(targetType),
        targetVersion = pulumi.Input.asOptionalInput<String>(targetVersion);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automaticValue = automatic;
    if (automaticValue != null) {
      map['automatic'] = automaticValue;
    }
    map['configRuleName'] = configRuleName;
    final executionControlsValue = executionControls;
    if (executionControlsValue != null) {
      map['executionControls'] = pulumi.Input.mapOptionalInputValue<
              RemediationConfigurationExecutionControls, Map<String, dynamic>>(
          executionControlsValue, (value) => value.toMap());
    }
    final maximumAutomaticAttemptsValue = maximumAutomaticAttempts;
    if (maximumAutomaticAttemptsValue != null) {
      map['maximumAutomaticAttempts'] = maximumAutomaticAttemptsValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<RemediationConfigurationParameter>,
              List<Map<String, dynamic>>>(
          parametersValue,
          (value) => pulumi.Input.encodeList<RemediationConfigurationParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    final retryAttemptSecondsValue = retryAttemptSeconds;
    if (retryAttemptSecondsValue != null) {
      map['retryAttemptSeconds'] = retryAttemptSecondsValue;
    }
    map['targetId'] = targetId;
    map['targetType'] = targetType;
    final targetVersionValue = targetVersion;
    if (targetVersionValue != null) {
      map['targetVersion'] = targetVersionValue;
    }
    return map;
  }

  factory RemediationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return RemediationConfigurationArgs(
      automatic: map['automatic'] == null ? null : map['automatic'] as bool,
      configRuleName: map['configRuleName'] as String,
      executionControls: map['executionControls'] == null
          ? null
          : RemediationConfigurationExecutionControls.fromMap(
              (map['executionControls'] as Map).cast<String, dynamic>()),
      maximumAutomaticAttempts: map['maximumAutomaticAttempts'] == null
          ? null
          : map['maximumAutomaticAttempts'] as int,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<RemediationConfigurationParameter>(
              map['parameters'],
              (value) => RemediationConfigurationParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      resourceType:
          map['resourceType'] == null ? null : map['resourceType'] as String,
      retryAttemptSeconds: map['retryAttemptSeconds'] == null
          ? null
          : map['retryAttemptSeconds'] as int,
      targetId: map['targetId'] as String,
      targetType: map['targetType'] as String,
      targetVersion:
          map['targetVersion'] == null ? null : map['targetVersion'] as String,
    );
  }
}
