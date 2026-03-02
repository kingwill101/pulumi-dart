// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering JobTemplate resources.
class JobTemplateState {
  /// Queue Jobs, Is of the Form: 1-10:2.
  final pulumi.Input<String>? arrayRequest;
  /// Job Maximum Run Time.
  final pulumi.Input<String>? clockTime;
  /// Job Commands.
  final pulumi.Input<String>? commandLine;
  /// A Single Compute Node Using the GPU Number.Possible Values: 1~20000.
  final pulumi.Input<int>? gpu;
  /// A Job Template Name.
  final pulumi.Input<String>? jobTemplateName;
  /// A Single Compute Node Maximum Memory.
  final pulumi.Input<String>? mem;
  /// Submit a Task Is Required for Computing the Number of Data Nodes to Be. Possible Values: 1~5000 .
  final pulumi.Input<int>? node;
  /// Job Commands the Directory.
  final pulumi.Input<String>? packagePath;
  /// The Job Priority.
  final pulumi.Input<int>? priority;
  /// The Job Queue.
  final pulumi.Input<String>? queue;
  /// If the Job Is Support for the Re-Run.
  final pulumi.Input<bool>? reRunable;
  /// The name of the user who performed the job.
  final pulumi.Input<String>? runasUser;
  /// Error Output Path.
  final pulumi.Input<String>? stderrRedirectPath;
  /// Standard Output Path and.
  final pulumi.Input<String>? stdoutRedirectPath;
  /// A Single Compute Node Required Number of Tasks. Possible Values: 1~20000 .
  final pulumi.Input<int>? task;
  /// A Single Task and the Number of Required Threads.
  final pulumi.Input<int>? thread;
  /// The Job of the Environment Variable.
  final pulumi.Input<String>? variables;

  /// Creates a new [JobTemplateState].
  /// [arrayRequest] Queue Jobs, Is of the Form: 1-10:2.
  /// [clockTime] Job Maximum Run Time.
  /// [commandLine] Job Commands.
  /// [gpu] A Single Compute Node Using the GPU Number.Possible Values: 1~20000.
  /// [jobTemplateName] A Job Template Name.
  /// [mem] A Single Compute Node Maximum Memory.
  /// [node] Submit a Task Is Required for Computing the Number of Data Nodes to Be. Possible Values: 1~5000 .
  /// [packagePath] Job Commands the Directory.
  /// [priority] The Job Priority.
  /// [queue] The Job Queue.
  /// [reRunable] If the Job Is Support for the Re-Run.
  /// [runasUser] The name of the user who performed the job.
  /// [stderrRedirectPath] Error Output Path.
  /// [stdoutRedirectPath] Standard Output Path and.
  /// [task] A Single Compute Node Required Number of Tasks. Possible Values: 1~20000 .
  /// [thread] A Single Task and the Number of Required Threads.
  /// [variables] The Job of the Environment Variable.
  JobTemplateState({
    this.arrayRequest,
    this.clockTime,
    this.commandLine,
    this.gpu,
    this.jobTemplateName,
    this.mem,
    this.node,
    this.packagePath,
    this.priority,
    this.queue,
    this.reRunable,
    this.runasUser,
    this.stderrRedirectPath,
    this.stdoutRedirectPath,
    this.task,
    this.thread,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayRequest': ?arrayRequest,
      'clockTime': ?clockTime,
      'commandLine': ?commandLine,
      'gpu': ?gpu,
      'jobTemplateName': ?jobTemplateName,
      'mem': ?mem,
      'node': ?node,
      'packagePath': ?packagePath,
      'priority': ?priority,
      'queue': ?queue,
      'reRunable': ?reRunable,
      'runasUser': ?runasUser,
      'stderrRedirectPath': ?stderrRedirectPath,
      'stdoutRedirectPath': ?stdoutRedirectPath,
      'task': ?task,
      'thread': ?thread,
      'variables': ?variables,
    };
  }

  factory JobTemplateState.fromMap(Map<String, dynamic> map) {
    return JobTemplateState(
      arrayRequest: map['arrayRequest'] == null ? null : (map['arrayRequest'] as String).input(),
      clockTime: map['clockTime'] == null ? null : (map['clockTime'] as String).input(),
      commandLine: map['commandLine'] == null ? null : (map['commandLine'] as String).input(),
      gpu: map['gpu'] == null ? null : (map['gpu'] as int).input(),
      jobTemplateName: map['jobTemplateName'] == null ? null : (map['jobTemplateName'] as String).input(),
      mem: map['mem'] == null ? null : (map['mem'] as String).input(),
      node: map['node'] == null ? null : (map['node'] as int).input(),
      packagePath: map['packagePath'] == null ? null : (map['packagePath'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      queue: map['queue'] == null ? null : (map['queue'] as String).input(),
      reRunable: map['reRunable'] == null ? null : (map['reRunable'] as bool).input(),
      runasUser: map['runasUser'] == null ? null : (map['runasUser'] as String).input(),
      stderrRedirectPath: map['stderrRedirectPath'] == null ? null : (map['stderrRedirectPath'] as String).input(),
      stdoutRedirectPath: map['stdoutRedirectPath'] == null ? null : (map['stdoutRedirectPath'] as String).input(),
      task: map['task'] == null ? null : (map['task'] as int).input(),
      thread: map['thread'] == null ? null : (map['thread'] as int).input(),
      variables: map['variables'] == null ? null : (map['variables'] as String).input(),
    );
  }
}

