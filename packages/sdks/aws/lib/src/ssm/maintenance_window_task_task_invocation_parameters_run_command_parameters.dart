// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_task_task_invocation_parameters_run_command_parameters_cloudwatch_config.dart';
import 'maintenance_window_task_task_invocation_parameters_run_command_parameters_notification_config.dart';
import 'maintenance_window_task_task_invocation_parameters_run_command_parameters_parameter.dart';

class MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters {
  /// Configuration options for sending command output to CloudWatch Logs. Documented below.
  final pulumi.Input<MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig?>? cloudwatchConfig;
  /// Information about the command(s) to execute.
  final pulumi.Input<String?>? comment;
  /// The SHA-256 or SHA-1 hash created by the system when the document was created. SHA-1 hashes have been deprecated.
  final pulumi.Input<String?>? documentHash;
  /// SHA-256 or SHA-1. SHA-1 hashes have been deprecated. Valid values: `Sha256` and `Sha1`
  final pulumi.Input<String?>? documentHashType;
  /// The version of an Automation document to use during task execution.
  final pulumi.Input<String?>? documentVersion;
  /// Configurations for sending notifications about command status changes on a per-instance basis. Documented below.
  final pulumi.Input<MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig?>? notificationConfig;
  /// The name of the Amazon S3 bucket.
  final pulumi.Input<String?>? outputS3Bucket;
  /// The Amazon S3 bucket subfolder.
  final pulumi.Input<String?>? outputS3KeyPrefix;
  /// The parameters for the RUN_COMMAND task execution. Documented below.
  final pulumi.Input<List<MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter>?>? parameters;
  /// ARN of the AWS Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.
  final pulumi.Input<String?>? serviceRoleArn;
  /// If this time is reached and the command has not already started executing, it doesn't run.
  final pulumi.Input<int?>? timeoutSeconds;

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
  /// [serviceRoleArn] ARN of the AWS Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.
  /// [timeoutSeconds] If this time is reached and the command has not already started executing, it doesn't run.
  const MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters({
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
      cloudwatchConfig: (() { final guardedValue = map['cloudwatchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentHash: (() { final guardedValue = map['documentHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentHashType: (() { final guardedValue = map['documentHashType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentVersion: (() { final guardedValue = map['documentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationConfig: (() { final guardedValue = map['notificationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputS3Bucket: (() { final guardedValue = map['outputS3Bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputS3KeyPrefix: (() { final guardedValue = map['outputS3KeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter>(guardedValue, (value) => MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceRoleArn: (() { final guardedValue = map['serviceRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
