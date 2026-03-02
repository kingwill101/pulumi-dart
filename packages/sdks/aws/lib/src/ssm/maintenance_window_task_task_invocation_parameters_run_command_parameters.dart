// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_task_task_invocation_parameters_run_command_parameters_cloudwatch_config.dart';
import 'maintenance_window_task_task_invocation_parameters_run_command_parameters_notification_config.dart';
import 'maintenance_window_task_task_invocation_parameters_run_command_parameters_parameter.dart';

class MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters {
  /// Configuration options for sending command output to CloudWatch Logs. Documented below.
  final pulumi.Input<MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig>? cloudwatchConfig;
  /// Information about the command(s) to execute.
  final pulumi.Input<String>? comment;
  /// The SHA-256 or SHA-1 hash created by the system when the document was created. SHA-1 hashes have been deprecated.
  final pulumi.Input<String>? documentHash;
  /// SHA-256 or SHA-1. SHA-1 hashes have been deprecated. Valid values: `Sha256` and `Sha1`
  final pulumi.Input<String>? documentHashType;
  /// The version of an Automation document to use during task execution.
  final pulumi.Input<String>? documentVersion;
  /// Configurations for sending notifications about command status changes on a per-instance basis. Documented below.
  final pulumi.Input<MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig>? notificationConfig;
  /// The name of the Amazon S3 bucket.
  final pulumi.Input<String>? outputS3Bucket;
  /// The Amazon S3 bucket subfolder.
  final pulumi.Input<String>? outputS3KeyPrefix;
  /// The parameters for the RUN_COMMAND task execution. Documented below.
  final pulumi.Input<List<MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter>>? parameters;
  /// The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.
  final pulumi.Input<String>? serviceRoleArn;
  /// If this time is reached and the command has not already started executing, it doesn't run.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters].
  /// [cloudwatchConfig] Configuration options for sending command output to CloudWatch Logs. Documented below.
  /// [comment] Information about the command(s) to execute.
  /// [documentHash] The SHA-256 or SHA-1 hash created by the system when the document was created. SHA-1 hashes have been deprecated.
  /// [documentHashType] SHA-256 or SHA-1. SHA-1 hashes have been deprecated. Valid values: `Sha256` and `Sha1`
  /// [documentVersion] The version of an Automation document to use during task execution.
  /// [notificationConfig] Configurations for sending notifications about command status changes on a per-instance basis. Documented below.
  /// [outputS3Bucket] The name of the Amazon S3 bucket.
  /// [outputS3KeyPrefix] The Amazon S3 bucket subfolder.
  /// [parameters] The parameters for the RUN_COMMAND task execution. Documented below.
  /// [serviceRoleArn] The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.
  /// [timeoutSeconds] If this time is reached and the command has not already started executing, it doesn't run.
  MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters({
    this.cloudwatchConfig,
    this.comment,
    this.documentHash,
    this.documentHashType,
    this.documentVersion,
    this.notificationConfig,
    this.outputS3Bucket,
    this.outputS3KeyPrefix,
    this.parameters,
    this.serviceRoleArn,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchConfig': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig, Map<String, dynamic>>(cloudwatchConfig, (value) => value.toMap()),
      'comment': ?comment,
      'documentHash': ?documentHash,
      'documentHashType': ?documentHashType,
      'documentVersion': ?documentVersion,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'outputS3Bucket': ?outputS3Bucket,
      'outputS3KeyPrefix': ?outputS3KeyPrefix,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceRoleArn': ?serviceRoleArn,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters(
      cloudwatchConfig: map['cloudwatchConfig'] == null ? null : ((MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig.fromMap((map['cloudwatchConfig']! as Map).cast<String, dynamic>())).input()).input(),
      comment: map['comment'] == null ? null : ((map['comment'] as String).input()).input(),
      documentHash: map['documentHash'] == null ? null : ((map['documentHash'] as String).input()).input(),
      documentHashType: map['documentHashType'] == null ? null : ((map['documentHashType'] as String).input()).input(),
      documentVersion: map['documentVersion'] == null ? null : ((map['documentVersion'] as String).input()).input(),
      notificationConfig: map['notificationConfig'] == null ? null : ((MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig.fromMap((map['notificationConfig']! as Map).cast<String, dynamic>())).input()).input(),
      outputS3Bucket: map['outputS3Bucket'] == null ? null : ((map['outputS3Bucket'] as String).input()).input(),
      outputS3KeyPrefix: map['outputS3KeyPrefix'] == null ? null : ((map['outputS3KeyPrefix'] as String).input()).input(),
      parameters: map['parameters'] == null ? null : ((pulumi.Input.decodeList<MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter>(map['parameters']!, (value) => MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      serviceRoleArn: map['serviceRoleArn'] == null ? null : ((map['serviceRoleArn'] as String).input()).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : ((map['timeoutSeconds'] as int).input()).input(),
    );
  }
}

