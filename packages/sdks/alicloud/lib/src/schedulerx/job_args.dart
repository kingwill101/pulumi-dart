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
      'jobMonitorInfo': ?pulumi.Input.mapOptionalInputValue<JobJobMonitorInfo, Map<String, dynamic>>(jobMonitorInfo, (value) => value.toMap()),
      'jobName': jobName,
      'jobType': jobType,
      'mapTaskXattrs': ?pulumi.Input.mapOptionalInputValue<JobMapTaskXattrs, Map<String, dynamic>>(mapTaskXattrs, (value) => value.toMap()),
      'maxAttempt': ?maxAttempt,
      'maxConcurrency': ?maxConcurrency,
      'namespace': namespace,
      'namespaceSource': ?namespaceSource,
      'parameters': ?parameters,
      'status': ?status,
      'successNoticeEnable': ?successNoticeEnable,
      'taskDispatchMode': ?taskDispatchMode,
      'template': ?template,
      'timeConfig': pulumi.Input.mapInputValue<JobTimeConfig, Map<String, dynamic>>(timeConfig, (value) => value.toMap()),
      'timezone': ?timezone,
      'xAttrs': ?xAttrs,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      attemptInterval: map['attemptInterval'] == null ? null : (map['attemptInterval']! as int).input(),
      className: map['className'] == null ? null : (map['className']! as String).input(),
      content: map['content'] == null ? null : (map['content']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      executeMode: (map['executeMode'] as String).input(),
      failTimes: map['failTimes'] == null ? null : (map['failTimes']! as int).input(),
      groupId: (map['groupId'] as String).input(),
      jobMonitorInfo: map['jobMonitorInfo'] == null ? null : (JobJobMonitorInfo.fromMap((map['jobMonitorInfo']! as Map).cast<String, dynamic>())).input(),
      jobName: (map['jobName'] as String).input(),
      jobType: (map['jobType'] as String).input(),
      mapTaskXattrs: map['mapTaskXattrs'] == null ? null : (JobMapTaskXattrs.fromMap((map['mapTaskXattrs']! as Map).cast<String, dynamic>())).input(),
      maxAttempt: map['maxAttempt'] == null ? null : (map['maxAttempt']! as int).input(),
      maxConcurrency: map['maxConcurrency'] == null ? null : (map['maxConcurrency']! as String).input(),
      namespace: (map['namespace'] as String).input(),
      namespaceSource: map['namespaceSource'] == null ? null : (map['namespaceSource']! as String).input(),
      parameters: map['parameters'] == null ? null : (map['parameters']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      successNoticeEnable: map['successNoticeEnable'] == null ? null : (map['successNoticeEnable']! as bool).input(),
      taskDispatchMode: map['taskDispatchMode'] == null ? null : (map['taskDispatchMode']! as String).input(),
      template: map['template'] == null ? null : (map['template']! as String).input(),
      timeConfig: (JobTimeConfig.fromMap((map['timeConfig'] as Map).cast<String, dynamic>())).input(),
      timezone: map['timezone'] == null ? null : (map['timezone']! as String).input(),
      xAttrs: map['xAttrs'] == null ? null : (map['xAttrs']! as String).input(),
    );
  }
}

