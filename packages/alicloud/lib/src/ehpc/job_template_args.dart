// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ehpc_job_template_job_template_args_doc}
/// The set of arguments for JobTemplate.
/// {@endtemplate}
/// {@macro pulumi_ehpc_job_template_job_template_args_doc}
class JobTemplateArgs {
  /// Queue Jobs, Is of the Form: 1-10:2.
  final pulumi.Input<String>? arrayRequest;
  /// Job Maximum Run Time.
  final pulumi.Input<String>? clockTime;
  /// Job Commands.
  final pulumi.Input<String> commandLine;
  /// A Single Compute Node Using the GPU Number.Possible Values: 1~20000.
  final pulumi.Input<int>? gpu;
  /// A Job Template Name.
  final pulumi.Input<String> jobTemplateName;
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

  /// Creates a new [JobTemplateArgs].
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
  JobTemplateArgs({
    String? arrayRequest,
    String? clockTime,
    required String commandLine,
    int? gpu,
    required String jobTemplateName,
    String? mem,
    int? node,
    String? packagePath,
    int? priority,
    String? queue,
    bool? reRunable,
    String? runasUser,
    String? stderrRedirectPath,
    String? stdoutRedirectPath,
    int? task,
    int? thread,
    String? variables,
  }) :
      arrayRequest = pulumi.Input.asOptionalInput<String>(arrayRequest),
      clockTime = pulumi.Input.asOptionalInput<String>(clockTime),
      commandLine = pulumi.Input.asInput<String>(commandLine),
      gpu = pulumi.Input.asOptionalInput<int>(gpu),
      jobTemplateName = pulumi.Input.asInput<String>(jobTemplateName),
      mem = pulumi.Input.asOptionalInput<String>(mem),
      node = pulumi.Input.asOptionalInput<int>(node),
      packagePath = pulumi.Input.asOptionalInput<String>(packagePath),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      queue = pulumi.Input.asOptionalInput<String>(queue),
      reRunable = pulumi.Input.asOptionalInput<bool>(reRunable),
      runasUser = pulumi.Input.asOptionalInput<String>(runasUser),
      stderrRedirectPath = pulumi.Input.asOptionalInput<String>(stderrRedirectPath),
      stdoutRedirectPath = pulumi.Input.asOptionalInput<String>(stdoutRedirectPath),
      task = pulumi.Input.asOptionalInput<int>(task),
      thread = pulumi.Input.asOptionalInput<int>(thread),
      variables = pulumi.Input.asOptionalInput<String>(variables);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayRequest': ?arrayRequest,
      'clockTime': ?clockTime,
      'commandLine': commandLine,
      'gpu': ?gpu,
      'jobTemplateName': jobTemplateName,
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

  factory JobTemplateArgs.fromMap(Map<String, dynamic> map) {
    return JobTemplateArgs(
      arrayRequest: map['arrayRequest'] == null ? null : map['arrayRequest'] as String,
      clockTime: map['clockTime'] == null ? null : map['clockTime'] as String,
      commandLine: map['commandLine'] as String,
      gpu: map['gpu'] == null ? null : map['gpu'] as int,
      jobTemplateName: map['jobTemplateName'] as String,
      mem: map['mem'] == null ? null : map['mem'] as String,
      node: map['node'] == null ? null : map['node'] as int,
      packagePath: map['packagePath'] == null ? null : map['packagePath'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      queue: map['queue'] == null ? null : map['queue'] as String,
      reRunable: map['reRunable'] == null ? null : map['reRunable'] as bool,
      runasUser: map['runasUser'] == null ? null : map['runasUser'] as String,
      stderrRedirectPath: map['stderrRedirectPath'] == null ? null : map['stderrRedirectPath'] as String,
      stdoutRedirectPath: map['stdoutRedirectPath'] == null ? null : map['stdoutRedirectPath'] as String,
      task: map['task'] == null ? null : map['task'] as int,
      thread: map['thread'] == null ? null : map['thread'] as int,
      variables: map['variables'] == null ? null : map['variables'] as String,
    );
  }
}

