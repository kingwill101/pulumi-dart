// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobTemplatesTemplate {
  /// Queue Jobs, Is of the Form: 1-10:2.
  final pulumi.Input<String> arrayRequest;

  /// Job Maximum Run Time.
  final pulumi.Input<String> clockTime;

  /// Job Commands.
  final pulumi.Input<String> commandLine;

  /// A Single Compute Node Using the GPU Number.Possible Values: 1~20000.
  final pulumi.Input<int> gpu;

  /// The ID of the Job Template.
  final pulumi.Input<String> id;

  /// The first ID of the resource.
  final pulumi.Input<String> jobTemplateId;

  /// A Job Template Name.
  final pulumi.Input<String> jobTemplateName;

  /// A Single Compute Node Maximum Memory.
  final pulumi.Input<String> mem;

  /// Submit a Task Is Required for Computing the Number of Data Nodes to Be. Possible Values: 1~5000 .
  final pulumi.Input<int> node;

  /// Job Commands the Directory.
  final pulumi.Input<String> packagePath;

  /// The Job Priority.Possible Values: 0~9.
  final pulumi.Input<int> priority;

  /// The Job Queue.
  final pulumi.Input<String> queue;

  /// If the Job Is Support for the Re-Run.
  final pulumi.Input<bool> reRunable;

  /// The name of the user who performed the job.
  final pulumi.Input<String> runasUser;

  /// Error Output Path.
  final pulumi.Input<String> stderrRedirectPath;

  /// Standard Output Path and.
  final pulumi.Input<String> stdoutRedirectPath;

  /// A Single Compute Node Required Number of Tasks. Possible Values: 1~20000 .
  final pulumi.Input<int> task;

  /// A Single Task and the Number of Required Threads.Possible Values: 1~20000.
  final pulumi.Input<int> thread;

  /// The Job of the Environment Variable.
  final pulumi.Input<String> variables;

  /// Creates a new [GetJobTemplatesTemplate].
  /// [arrayRequest] Queue Jobs, Is of the Form: 1-10:2.
  /// [clockTime] Job Maximum Run Time.
  /// [commandLine] Job Commands.
  /// [gpu] A Single Compute Node Using the GPU Number.Possible Values: 1~20000.
  /// [id] The ID of the Job Template.
  /// [jobTemplateId] The first ID of the resource.
  /// [jobTemplateName] A Job Template Name.
  /// [mem] A Single Compute Node Maximum Memory.
  /// [node] Submit a Task Is Required for Computing the Number of Data Nodes to Be. Possible Values: 1~5000 .
  /// [packagePath] Job Commands the Directory.
  /// [priority] The Job Priority.Possible Values: 0~9.
  /// [queue] The Job Queue.
  /// [reRunable] If the Job Is Support for the Re-Run.
  /// [runasUser] The name of the user who performed the job.
  /// [stderrRedirectPath] Error Output Path.
  /// [stdoutRedirectPath] Standard Output Path and.
  /// [task] A Single Compute Node Required Number of Tasks. Possible Values: 1~20000 .
  /// [thread] A Single Task and the Number of Required Threads.Possible Values: 1~20000.
  /// [variables] The Job of the Environment Variable.
  GetJobTemplatesTemplate({
    required this.arrayRequest,
    required this.clockTime,
    required this.commandLine,
    required this.gpu,
    required this.id,
    required this.jobTemplateId,
    required this.jobTemplateName,
    required this.mem,
    required this.node,
    required this.packagePath,
    required this.priority,
    required this.queue,
    required this.reRunable,
    required this.runasUser,
    required this.stderrRedirectPath,
    required this.stdoutRedirectPath,
    required this.task,
    required this.thread,
    required this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayRequest': arrayRequest,
      'clockTime': clockTime,
      'commandLine': commandLine,
      'gpu': gpu,
      'id': id,
      'jobTemplateId': jobTemplateId,
      'jobTemplateName': jobTemplateName,
      'mem': mem,
      'node': node,
      'packagePath': packagePath,
      'priority': priority,
      'queue': queue,
      'reRunable': reRunable,
      'runasUser': runasUser,
      'stderrRedirectPath': stderrRedirectPath,
      'stdoutRedirectPath': stdoutRedirectPath,
      'task': task,
      'thread': thread,
      'variables': variables,
    };
  }

  factory GetJobTemplatesTemplate.fromMap(Map<String, dynamic> map) {
    return GetJobTemplatesTemplate(
      arrayRequest: pulumi.Input.fromValue(map['arrayRequest'] as String),
      clockTime: pulumi.Input.fromValue(map['clockTime'] as String),
      commandLine: pulumi.Input.fromValue(map['commandLine'] as String),
      gpu: pulumi.Input.fromValue(map['gpu'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      jobTemplateId: pulumi.Input.fromValue(map['jobTemplateId'] as String),
      jobTemplateName: pulumi.Input.fromValue(map['jobTemplateName'] as String),
      mem: pulumi.Input.fromValue(map['mem'] as String),
      node: pulumi.Input.fromValue(map['node'] as int),
      packagePath: pulumi.Input.fromValue(map['packagePath'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      queue: pulumi.Input.fromValue(map['queue'] as String),
      reRunable: pulumi.Input.fromValue(map['reRunable'] as bool),
      runasUser: pulumi.Input.fromValue(map['runasUser'] as String),
      stderrRedirectPath: pulumi.Input.fromValue(
        map['stderrRedirectPath'] as String,
      ),
      stdoutRedirectPath: pulumi.Input.fromValue(
        map['stdoutRedirectPath'] as String,
      ),
      task: pulumi.Input.fromValue(map['task'] as int),
      thread: pulumi.Input.fromValue(map['thread'] as int),
      variables: pulumi.Input.fromValue(map['variables'] as String),
    );
  }
}
