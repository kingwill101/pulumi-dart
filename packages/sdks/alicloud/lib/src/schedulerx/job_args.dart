// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_job_monitor_info.dart';
import 'job_map_task_xattrs.dart';
import 'job_time_config.dart';

/// {@template pulumi_schedulerx_job_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_schedulerx_job_job_args_doc}
class JobArgs {
  /// Error retry interval, unit s, default value 30.
  final pulumi.Input<int>? attemptInterval;

  /// Full path of the task interface class.
  ///
  /// This field is available only when your task is of the Java task type.
  final pulumi.Input<String>? className;

  /// The script code of the python, shell, and go task types.
  final pulumi.Input<String>? content;

  /// Task description.
  final pulumi.Input<String>? description;

  /// Task execution mode, the possible results are as follows:
  final pulumi.Input<String> executeMode;

  /// Number of consecutive failed alarms
  final pulumi.Input<int>? failTimes;

  /// The application ID, which is obtained from the **application management** page of the console.
  final pulumi.Input<String> groupId;

  /// Task monitoring information See `job_monitor_info` below.
  final pulumi.Input<JobJobMonitorInfo>? jobMonitorInfo;

  /// JobName
  final pulumi.Input<String> jobName;

  /// Job Type
  final pulumi.Input<String> jobType;

  /// Advanced configuration, limited to parallel computing, memory grid, and grid computing. See `map_task_xattrs` below.
  final pulumi.Input<JobMapTaskXattrs>? mapTaskXattrs;

  /// The maximum number of error retries, which is set based on business requirements. The default value is 0.
  final pulumi.Input<int>? maxAttempt;

  /// The maximum number of instances running at the same time. The default value is 1, that is, the last trigger is not completed, and the next trigger will not be performed even at the running time.
  final pulumi.Input<String>? maxConcurrency;

  /// Namespace, which is obtained on the `Namespace` page of the console.
  final pulumi.Input<String> namespace;

  /// Special third parties are required.
  final pulumi.Input<String>? namespaceSource;

  /// User-defined parameters, which can be obtained at runtime.
  final pulumi.Input<String>? parameters;

  /// Task status. The values are as follows:
  final pulumi.Input<String>? status;

  /// Success Notification Switch
  final pulumi.Input<bool>? successNoticeEnable;

  /// Advanced configuration of parallel grid tasks, push model or pull model
  final pulumi.Input<String>? taskDispatchMode;

  /// K8s task type custom task template
  final pulumi.Input<String>? template;

  /// Time configuration information See `time_config` below.
  final pulumi.Input<JobTimeConfig> timeConfig;

  /// Time Zone
  final pulumi.Input<String>? timezone;

  /// Task Extension Field
  final pulumi.Input<String>? xAttrs;

  /// Creates a new [JobArgs].
  /// [attemptInterval] Error retry interval, unit s, default value 30.
  /// [className] Full path of the task interface class.
  /// [content] The script code of the python, shell, and go task types.
  /// [description] Task description.
  /// [executeMode] Task execution mode, the possible results are as follows:
  /// [failTimes] Number of consecutive failed alarms
  /// [groupId] The application ID, which is obtained from the **application management** page of the console.
  /// [jobMonitorInfo] Task monitoring information See `job_monitor_info` below.
  /// [jobName] JobName
  /// [jobType] Job Type
  /// [mapTaskXattrs] Advanced configuration, limited to parallel computing, memory grid, and grid computing. See `map_task_xattrs` below.
  /// [maxAttempt] The maximum number of error retries, which is set based on business requirements. The default value is 0.
  /// [maxConcurrency] The maximum number of instances running at the same time. The default value is 1, that is, the last trigger is not completed, and the next trigger will not be performed even at the running time.
  /// [namespace] Namespace, which is obtained on the `Namespace` page of the console.
  /// [namespaceSource] Special third parties are required.
  /// [parameters] User-defined parameters, which can be obtained at runtime.
  /// [status] Task status. The values are as follows:
  /// [successNoticeEnable] Success Notification Switch
  /// [taskDispatchMode] Advanced configuration of parallel grid tasks, push model or pull model
  /// [template] K8s task type custom task template
  /// [timeConfig] Time configuration information See `time_config` below.
  /// [timezone] Time Zone
  /// [xAttrs] Task Extension Field
  JobArgs({
    this.attemptInterval,
    this.className,
    this.content,
    this.description,
    required this.executeMode,
    this.failTimes,
    required this.groupId,
    this.jobMonitorInfo,
    required this.jobName,
    required this.jobType,
    this.mapTaskXattrs,
    this.maxAttempt,
    this.maxConcurrency,
    required this.namespace,
    this.namespaceSource,
    this.parameters,
    this.status,
    this.successNoticeEnable,
    this.taskDispatchMode,
    this.template,
    required this.timeConfig,
    this.timezone,
    this.xAttrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attemptInterval': ?attemptInterval,
      'className': ?className,
      'content': ?content,
      'description': ?description,
      'executeMode': executeMode,
      'failTimes': ?failTimes,
      'groupId': groupId,
      'jobMonitorInfo':
          ?pulumi.Input.mapOptionalInputValue<
            JobJobMonitorInfo,
            Map<String, dynamic>
          >(jobMonitorInfo, (value) => value.toMap()),
      'jobName': jobName,
      'jobType': jobType,
      'mapTaskXattrs':
          ?pulumi.Input.mapOptionalInputValue<
            JobMapTaskXattrs,
            Map<String, dynamic>
          >(mapTaskXattrs, (value) => value.toMap()),
      'maxAttempt': ?maxAttempt,
      'maxConcurrency': ?maxConcurrency,
      'namespace': namespace,
      'namespaceSource': ?namespaceSource,
      'parameters': ?parameters,
      'status': ?status,
      'successNoticeEnable': ?successNoticeEnable,
      'taskDispatchMode': ?taskDispatchMode,
      'template': ?template,
      'timeConfig':
          pulumi.Input.mapInputValue<JobTimeConfig, Map<String, dynamic>>(
            timeConfig,
            (value) => value.toMap(),
          ),
      'timezone': ?timezone,
      'xAttrs': ?xAttrs,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      attemptInterval: (() {
        final guardedValue = map['attemptInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      className: (() {
        final guardedValue = map['className'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executeMode: pulumi.Input.fromValue(map['executeMode'] as String),
      failTimes: (() {
        final guardedValue = map['failTimes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      jobMonitorInfo: (() {
        final guardedValue = map['jobMonitorInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobJobMonitorInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      mapTaskXattrs: (() {
        final guardedValue = map['mapTaskXattrs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobMapTaskXattrs.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxAttempt: (() {
        final guardedValue = map['maxAttempt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxConcurrency: (() {
        final guardedValue = map['maxConcurrency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      namespaceSource: (() {
        final guardedValue = map['namespaceSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      successNoticeEnable: (() {
        final guardedValue = map['successNoticeEnable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      taskDispatchMode: (() {
        final guardedValue = map['taskDispatchMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      template: (() {
        final guardedValue = map['template'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeConfig: pulumi.Input.fromValue(
        JobTimeConfig.fromMap(
          (map['timeConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      timezone: (() {
        final guardedValue = map['timezone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      xAttrs: (() {
        final guardedValue = map['xAttrs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
