// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../transfer_job_event_stream/transfer_job_event_stream.dart';
import '../transfer_job_logging_config/transfer_job_logging_config.dart';
import '../transfer_job_notification_config/transfer_job_notification_config.dart';
import '../transfer_job_replication_spec/transfer_job_replication_spec.dart';
import '../transfer_job_schedule/transfer_job_schedule.dart';
import '../transfer_job_transfer_spec/transfer_job_transfer_spec.dart';

/// The set of arguments for TransferJob.
class TransferJobArgs {
  /// Unique description to identify the Transfer Job.
  final Input<String> description;

  /// Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files. Structure documented below Either `event_stream` or `schedule` must be set.
  final Input<TransferJobEventStream>? eventStream;

  /// Logging configuration. Structure documented below.
  final Input<TransferJobLoggingConfig>? loggingConfig;

  /// The name of the Transfer Job. This name must start with "transferJobs/" prefix and end with a letter or a number, and should be no more than 128 characters ( `transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For transfers involving PosixFilesystem, this name must start with transferJobs/OPI specifically ( `transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For all other transfer types, this name must not start with transferJobs/OPI. Default the provider will assign a random unique name with `transferJobs/{{name}}` format, where `name` is a numeric value.
  final Input<String>? name;

  /// Notification configuration. This is not supported for transfers involving PosixFilesystem. Structure documented below.
  final Input<TransferJobNotificationConfig>? notificationConfig;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// Replication specification. Structure documented below. User should not configure `schedule`, `event_stream` with this argument. One of `transfer_spec`, or `replication_spec` must be specified.
  ///
  /// - - -
  final Input<TransferJobReplicationSpec>? replicationSpec;

  /// Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. Structure documented below. Either `schedule` or `event_stream` must be set.
  final Input<TransferJobSchedule>? schedule;

  /// The user-managed service account to run the job. If this field is specified, the given service account is granted the necessary permissions to all applicable resources (e.g. GCS buckets) required by the job.
  final Input<String>? serviceAccount;

  /// Status of the job. Default: `ENABLED`. **NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.**
  final Input<String>? status;

  /// Transfer specification. Structure documented below. One of `transfer_spec`, or `replication_spec` can be specified.
  final Input<TransferJobTransferSpec>? transferSpec;

  TransferJobArgs({
    required this.description,
    this.eventStream,
    this.loggingConfig,
    this.name,
    this.notificationConfig,
    this.project,
    this.replicationSpec,
    this.schedule,
    this.serviceAccount,
    this.status,
    this.transferSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    final eventStreamValue = eventStream;
    if (eventStreamValue != null) {
      map['eventStream'] = Input.mapOptionalInputValue<TransferJobEventStream,
          Map<String, dynamic>>(eventStreamValue, (value) => value.toMap());
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = Input.mapOptionalInputValue<
          TransferJobLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = Input.mapOptionalInputValue<
              TransferJobNotificationConfig, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final replicationSpecValue = replicationSpec;
    if (replicationSpecValue != null) {
      map['replicationSpec'] = Input.mapOptionalInputValue<
          TransferJobReplicationSpec,
          Map<String, dynamic>>(replicationSpecValue, (value) => value.toMap());
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = Input.mapOptionalInputValue<TransferJobSchedule,
          Map<String, dynamic>>(scheduleValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final transferSpecValue = transferSpec;
    if (transferSpecValue != null) {
      map['transferSpec'] = Input.mapOptionalInputValue<TransferJobTransferSpec,
          Map<String, dynamic>>(transferSpecValue, (value) => value.toMap());
    }
    return map;
  }

  factory TransferJobArgs.fromMap(Map<String, dynamic> map) {
    return TransferJobArgs(
      description: Input.asInput<String>(map['description']),
      eventStream:
          Input.asOptionalInput<TransferJobEventStream>(map['eventStream']),
      loggingConfig:
          Input.asOptionalInput<TransferJobLoggingConfig>(map['loggingConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      notificationConfig: Input.asOptionalInput<TransferJobNotificationConfig>(
          map['notificationConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      replicationSpec: Input.asOptionalInput<TransferJobReplicationSpec>(
          map['replicationSpec']),
      schedule: Input.asOptionalInput<TransferJobSchedule>(map['schedule']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      status: Input.asOptionalInput<String>(map['status']),
      transferSpec:
          Input.asOptionalInput<TransferJobTransferSpec>(map['transferSpec']),
    );
  }
}
