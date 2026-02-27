// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_stream.dart';
import 'logging_config_storagetransfer_v1.dart';
import 'notification_config_storagetransfer_v1.dart';
import 'schedule_storagetransfer_v1.dart';
import 'transfer_job_status.dart';
import 'transfer_spec.dart';

/// The set of arguments for TransferJob.
class TransferJobArgs {
  /// A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded.
  final pulumi.Input<String>? description;

  /// Specifies the event stream for the transfer job for event-driven transfers. When EventStream is specified, the Schedule fields are ignored.
  final pulumi.Input<EventStream>? eventStream;

  /// The name of the most recently started TransferOperation of this JobConfig. Present if a TransferOperation has been created for this JobConfig.
  final pulumi.Input<String>? latestOperationName;

  /// Logging configuration.
  final pulumi.Input<LoggingConfigStoragetransferV1>? loggingConfig;

  /// A unique name (within the transfer project) assigned when the job is created. If this field is empty in a CreateTransferJobRequest, Storage Transfer Service assigns a unique name. Otherwise, the specified name is used as the unique name for this job. If the specified name is in use by a job, the creation request fails with an ALREADY_EXISTS error. This name must start with `"transferJobs/"` prefix and end with a letter or a number, and should be no more than 128 characters. For transfers involving PosixFilesystem, this name must start with `transferJobs/OPI` specifically. For all other transfer types, this name must not start with `transferJobs/OPI`. Non-PosixFilesystem example: `"transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$"` PosixFilesystem example: `"transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$"` Applications must not rely on the enforcement of naming requirements involving OPI. Invalid job names fail with an INVALID_ARGUMENT error.
  final pulumi.Input<String>? name;

  /// Notification configuration. This is not supported for transfers involving PosixFilesystem.
  final pulumi.Input<NotificationConfigStoragetransferV1>? notificationConfig;

  /// The ID of the Google Cloud project that owns the job.
  final pulumi.Input<String>? project;

  /// Specifies schedule for the transfer job. This is an optional field. When the field is not set, the job never executes a transfer, unless you invoke RunTransferJob or update the job to have a non-empty schedule.
  final pulumi.Input<ScheduleStoragetransferV1>? schedule;

  /// Status of the job. This value MUST be specified for `CreateTransferJobRequests`. **Note:** The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.
  final pulumi.Input<TransferJobStatus>? status;

  /// Transfer specification.
  final pulumi.Input<TransferSpec>? transferSpec;

  TransferJobArgs({
    this.description,
    this.eventStream,
    this.latestOperationName,
    this.loggingConfig,
    this.name,
    this.notificationConfig,
    this.project,
    this.schedule,
    this.status,
    this.transferSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final eventStreamValue = eventStream;
    if (eventStreamValue != null) {
      map['eventStream'] =
          pulumi.Input.mapOptionalInputValue<EventStream, Map<String, dynamic>>(
              eventStreamValue, (value) => value.toMap());
    }
    final latestOperationNameValue = latestOperationName;
    if (latestOperationNameValue != null) {
      map['latestOperationName'] = latestOperationNameValue;
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = pulumi.Input.mapOptionalInputValue<
          LoggingConfigStoragetransferV1,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = pulumi.Input.mapOptionalInputValue<
              NotificationConfigStoragetransferV1, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = pulumi.Input.mapOptionalInputValue<
          ScheduleStoragetransferV1,
          Map<String, dynamic>>(scheduleValue, (value) => value.toMap());
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] =
          pulumi.Input.mapOptionalInputValue<TransferJobStatus, String>(
              statusValue, (value) => value.value);
    }
    final transferSpecValue = transferSpec;
    if (transferSpecValue != null) {
      map['transferSpec'] = pulumi.Input.mapOptionalInputValue<TransferSpec,
          Map<String, dynamic>>(transferSpecValue, (value) => value.toMap());
    }
    return map;
  }

  factory TransferJobArgs.fromMap(Map<String, dynamic> map) {
    return TransferJobArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      eventStream:
          pulumi.Input.asOptionalInput<EventStream>(map['eventStream']),
      latestOperationName:
          pulumi.Input.asOptionalInput<String>(map['latestOperationName']),
      loggingConfig:
          pulumi.Input.asOptionalInput<LoggingConfigStoragetransferV1>(
              map['loggingConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      notificationConfig:
          pulumi.Input.asOptionalInput<NotificationConfigStoragetransferV1>(
              map['notificationConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      schedule: pulumi.Input.asOptionalInput<ScheduleStoragetransferV1>(
          map['schedule']),
      status: pulumi.Input.asOptionalInput<TransferJobStatus>(map['status']),
      transferSpec:
          pulumi.Input.asOptionalInput<TransferSpec>(map['transferSpec']),
    );
  }
}
