// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_schedulerx_app_group_app_group_args_doc}
/// The set of arguments for AppGroup.
/// {@endtemplate}
/// {@macro pulumi_schedulerx_app_group_app_group_args_doc}
class AppGroupArgs {
  /// Application Name
  final pulumi.Input<String> appName;
  /// Application type.
  /// - 1, general application.
  /// - 2, k8s application.
  final pulumi.Input<int>? appType;
  /// Application Version, 1: Basic Edition, 2: Professional Edition
  final pulumi.Input<String>? appVersion;
  /// Whether to delete the task in the application Group. The values are as follows:
  final pulumi.Input<bool>? deleteJobs;
  /// Application Description
  final pulumi.Input<String>? description;
  /// Whether to enable the log.
  /// - true: On
  /// - false: Close
  final pulumi.Input<bool>? enableLog;
  /// Application ID
  final pulumi.Input<String> groupId;
  /// The maximum number of instances running at the same time. The default value is 1, that is, the last trigger is not completed, and the next trigger will not be performed even at the running time.
  final pulumi.Input<int>? maxConcurrency;
  /// Application Grouping Configurable Maximum Number of Tasks
  final pulumi.Input<int>? maxJobs;
  /// Alarm configuration JSON field. For more information about this field, see **Request Parameters * *.
  final pulumi.Input<String>? monitorConfigJson;
  /// Alarm contact JSON format.
  final pulumi.Input<String>? monitorContactsJson;
  /// The namespace ID, which is obtained on the namespace page of the console.
  final pulumi.Input<String> namespace;
  /// The namespace name.
  final pulumi.Input<String> namespaceName;
  /// Not supported for the time being, no need to fill in.
  final pulumi.Input<String>? namespaceSource;
  /// Whether to schedule a busy machine.
  final pulumi.Input<bool>? scheduleBusyWorkers;

  /// Creates a new [AppGroupArgs].
  /// [appName] Application Name
  /// [appType] Application type.
  /// [appVersion] Application Version, 1: Basic Edition, 2: Professional Edition
  /// [deleteJobs] Whether to delete the task in the application Group. The values are as follows:
  /// [description] Application Description
  /// [enableLog] Whether to enable the log.
  /// [groupId] Application ID
  /// [maxConcurrency] The maximum number of instances running at the same time. The default value is 1, that is, the last trigger is not completed, and the next trigger will not be performed even at the running time.
  /// [maxJobs] Application Grouping Configurable Maximum Number of Tasks
  /// [monitorConfigJson] Alarm configuration JSON field. For more information about this field, see **Request Parameters * *.
  /// [monitorContactsJson] Alarm contact JSON format.
  /// [namespace] The namespace ID, which is obtained on the namespace page of the console.
  /// [namespaceName] The namespace name.
  /// [namespaceSource] Not supported for the time being, no need to fill in.
  /// [scheduleBusyWorkers] Whether to schedule a busy machine.
  AppGroupArgs({
    required String appName,
    int? appType,
    String? appVersion,
    bool? deleteJobs,
    String? description,
    bool? enableLog,
    required String groupId,
    int? maxConcurrency,
    int? maxJobs,
    String? monitorConfigJson,
    String? monitorContactsJson,
    required String namespace,
    required String namespaceName,
    String? namespaceSource,
    bool? scheduleBusyWorkers,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      appType = pulumi.Input.asOptionalInput<int>(appType),
      appVersion = pulumi.Input.asOptionalInput<String>(appVersion),
      deleteJobs = pulumi.Input.asOptionalInput<bool>(deleteJobs),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableLog = pulumi.Input.asOptionalInput<bool>(enableLog),
      groupId = pulumi.Input.asInput<String>(groupId),
      maxConcurrency = pulumi.Input.asOptionalInput<int>(maxConcurrency),
      maxJobs = pulumi.Input.asOptionalInput<int>(maxJobs),
      monitorConfigJson = pulumi.Input.asOptionalInput<String>(monitorConfigJson),
      monitorContactsJson = pulumi.Input.asOptionalInput<String>(monitorContactsJson),
      namespace = pulumi.Input.asInput<String>(namespace),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      namespaceSource = pulumi.Input.asOptionalInput<String>(namespaceSource),
      scheduleBusyWorkers = pulumi.Input.asOptionalInput<bool>(scheduleBusyWorkers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'appType': ?appType,
      'appVersion': ?appVersion,
      'deleteJobs': ?deleteJobs,
      'description': ?description,
      'enableLog': ?enableLog,
      'groupId': groupId,
      'maxConcurrency': ?maxConcurrency,
      'maxJobs': ?maxJobs,
      'monitorConfigJson': ?monitorConfigJson,
      'monitorContactsJson': ?monitorContactsJson,
      'namespace': namespace,
      'namespaceName': namespaceName,
      'namespaceSource': ?namespaceSource,
      'scheduleBusyWorkers': ?scheduleBusyWorkers,
    };
  }

  factory AppGroupArgs.fromMap(Map<String, dynamic> map) {
    return AppGroupArgs(
      appName: map['appName'] as String,
      appType: map['appType'] == null ? null : map['appType'] as int,
      appVersion: map['appVersion'] == null ? null : map['appVersion'] as String,
      deleteJobs: map['deleteJobs'] == null ? null : map['deleteJobs'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      enableLog: map['enableLog'] == null ? null : map['enableLog'] as bool,
      groupId: map['groupId'] as String,
      maxConcurrency: map['maxConcurrency'] == null ? null : map['maxConcurrency'] as int,
      maxJobs: map['maxJobs'] == null ? null : map['maxJobs'] as int,
      monitorConfigJson: map['monitorConfigJson'] == null ? null : map['monitorConfigJson'] as String,
      monitorContactsJson: map['monitorContactsJson'] == null ? null : map['monitorContactsJson'] as String,
      namespace: map['namespace'] as String,
      namespaceName: map['namespaceName'] as String,
      namespaceSource: map['namespaceSource'] == null ? null : map['namespaceSource'] as String,
      scheduleBusyWorkers: map['scheduleBusyWorkers'] == null ? null : map['scheduleBusyWorkers'] as bool,
    );
  }
}

