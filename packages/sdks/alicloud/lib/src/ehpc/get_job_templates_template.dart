// ignore_for_file: unused_element, unnecessary_cast


class GetJobTemplatesTemplate {
  /// Queue Jobs, Is of the Form: 1-10:2.
  final String arrayRequest;
  /// Job Maximum Run Time.
  final String clockTime;
  /// Job Commands.
  final String commandLine;
  /// A Single Compute Node Using the GPU Number.Possible Values: 1~20000.
  final int gpu;
  /// The ID of the Job Template.
  final String id;
  /// The first ID of the resource.
  final String jobTemplateId;
  /// A Job Template Name.
  final String jobTemplateName;
  /// A Single Compute Node Maximum Memory.
  final String mem;
  /// Submit a Task Is Required for Computing the Number of Data Nodes to Be. Possible Values: 1~5000 .
  final int node;
  /// Job Commands the Directory.
  final String packagePath;
  /// The Job Priority.Possible Values: 0~9.
  final int priority;
  /// The Job Queue.
  final String queue;
  /// If the Job Is Support for the Re-Run.
  final bool reRunable;
  /// The name of the user who performed the job.
  final String runasUser;
  /// Error Output Path.
  final String stderrRedirectPath;
  /// Standard Output Path and.
  final String stdoutRedirectPath;
  /// A Single Compute Node Required Number of Tasks. Possible Values: 1~20000 .
  final int task;
  /// A Single Task and the Number of Required Threads.Possible Values: 1~20000.
  final int thread;
  /// The Job of the Environment Variable.
  final String variables;

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
      arrayRequest: map['arrayRequest'] as String,
      clockTime: map['clockTime'] as String,
      commandLine: map['commandLine'] as String,
      gpu: map['gpu'] as int,
      id: map['id'] as String,
      jobTemplateId: map['jobTemplateId'] as String,
      jobTemplateName: map['jobTemplateName'] as String,
      mem: map['mem'] as String,
      node: map['node'] as int,
      packagePath: map['packagePath'] as String,
      priority: map['priority'] as int,
      queue: map['queue'] as String,
      reRunable: map['reRunable'] as bool,
      runasUser: map['runasUser'] as String,
      stderrRedirectPath: map['stderrRedirectPath'] as String,
      stdoutRedirectPath: map['stdoutRedirectPath'] as String,
      task: map['task'] as int,
      thread: map['thread'] as int,
      variables: map['variables'] as String,
    );
  }
}

