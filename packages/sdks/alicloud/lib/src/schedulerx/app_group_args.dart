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
    required this.appName,
    this.appType,
    this.appVersion,
    this.deleteJobs,
    this.description,
    this.enableLog,
    required this.groupId,
    this.maxConcurrency,
    this.maxJobs,
    this.monitorConfigJson,
    this.monitorContactsJson,
    required this.namespace,
    required this.namespaceName,
    this.namespaceSource,
    this.scheduleBusyWorkers,
  });

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
      appName: pulumi.Input.fromValue(map['appName'] as String),
      appType: (() {
        final guardedValue = map['appType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      appVersion: (() {
        final guardedValue = map['appVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deleteJobs: (() {
        final guardedValue = map['deleteJobs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableLog: (() {
        final guardedValue = map['enableLog'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      maxConcurrency: (() {
        final guardedValue = map['maxConcurrency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxJobs: (() {
        final guardedValue = map['maxJobs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      monitorConfigJson: (() {
        final guardedValue = map['monitorConfigJson'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      monitorContactsJson: (() {
        final guardedValue = map['monitorContactsJson'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      namespaceSource: (() {
        final guardedValue = map['namespaceSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scheduleBusyWorkers: (() {
        final guardedValue = map['scheduleBusyWorkers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
