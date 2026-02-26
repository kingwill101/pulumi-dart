// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../maintenance_window_task_task_invocation_parameters_run_command_parameters_cloudwatch_config/maintenance_window_task_task_invocation_parameters_run_command_parameters_cloudwatch_config.dart';
import '../maintenance_window_task_task_invocation_parameters_run_command_parameters_notification_config/maintenance_window_task_task_invocation_parameters_run_command_parameters_notification_config.dart';
import '../maintenance_window_task_task_invocation_parameters_run_command_parameters_parameter/maintenance_window_task_task_invocation_parameters_run_command_parameters_parameter.dart';

class MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters {
  /// Configuration options for sending command output to CloudWatch Logs. Documented below.
  final MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig?
      cloudwatchConfig;

  /// Information about the command(s) to execute.
  final String? comment;

  /// The SHA-256 or SHA-1 hash created by the system when the document was created. SHA-1 hashes have been deprecated.
  final String? documentHash;

  /// SHA-256 or SHA-1. SHA-1 hashes have been deprecated. Valid values: `Sha256` and `Sha1`
  final String? documentHashType;

  /// The version of an Automation document to use during task execution.
  final String? documentVersion;

  /// Configurations for sending notifications about command status changes on a per-instance basis. Documented below.
  final MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig?
      notificationConfig;

  /// The name of the Amazon S3 bucket.
  final String? outputS3Bucket;

  /// The Amazon S3 bucket subfolder.
  final String? outputS3KeyPrefix;

  /// The parameters for the RUN_COMMAND task execution. Documented below.
  final List<
          MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter>?
      parameters;

  /// The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.
  final String? serviceRoleArn;

  /// If this time is reached and the command has not already started executing, it doesn't run.
  final int? timeoutSeconds;

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
    final map = <String, dynamic>{};
    final cloudwatchConfigValue = cloudwatchConfig;
    if (cloudwatchConfigValue != null) {
      map['cloudwatchConfig'] = cloudwatchConfigValue.toMap();
    }
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final documentHashValue = documentHash;
    if (documentHashValue != null) {
      map['documentHash'] = documentHashValue;
    }
    final documentHashTypeValue = documentHashType;
    if (documentHashTypeValue != null) {
      map['documentHashType'] = documentHashTypeValue;
    }
    final documentVersionValue = documentVersion;
    if (documentVersionValue != null) {
      map['documentVersion'] = documentVersionValue;
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = notificationConfigValue.toMap();
    }
    final outputS3BucketValue = outputS3Bucket;
    if (outputS3BucketValue != null) {
      map['outputS3Bucket'] = outputS3BucketValue;
    }
    final outputS3KeyPrefixValue = outputS3KeyPrefix;
    if (outputS3KeyPrefixValue != null) {
      map['outputS3KeyPrefix'] = outputS3KeyPrefixValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.encodeList<
          MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    final serviceRoleArnValue = serviceRoleArn;
    if (serviceRoleArnValue != null) {
      map['serviceRoleArn'] = serviceRoleArnValue;
    }
    final timeoutSecondsValue = timeoutSeconds;
    if (timeoutSecondsValue != null) {
      map['timeoutSeconds'] = timeoutSecondsValue;
    }
    return map;
  }

  factory MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters(
      cloudwatchConfig: map['cloudwatchConfig'] == null
          ? null
          : MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig
              .fromMap(
                  (map['cloudwatchConfig'] as Map).cast<String, dynamic>()),
      comment: map['comment'] == null ? null : map['comment'] as String,
      documentHash:
          map['documentHash'] == null ? null : map['documentHash'] as String,
      documentHashType: map['documentHashType'] == null
          ? null
          : map['documentHashType'] as String,
      documentVersion: map['documentVersion'] == null
          ? null
          : map['documentVersion'] as String,
      notificationConfig: map['notificationConfig'] == null
          ? null
          : MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig
              .fromMap(
                  (map['notificationConfig'] as Map).cast<String, dynamic>()),
      outputS3Bucket: map['outputS3Bucket'] == null
          ? null
          : map['outputS3Bucket'] as String,
      outputS3KeyPrefix: map['outputS3KeyPrefix'] == null
          ? null
          : map['outputS3KeyPrefix'] as String,
      parameters: map['parameters'] == null
          ? null
          : Input.decodeList<
                  MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter>(
              map['parameters'],
              (value) =>
                  MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter
                      .fromMap((value as Map).cast<String, dynamic>())),
      serviceRoleArn: map['serviceRoleArn'] == null
          ? null
          : map['serviceRoleArn'] as String,
      timeoutSeconds:
          map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}
