// ignore_for_file: unused_element, unnecessary_cast

import 'worker_settings_response.dart';

/// Taskrunner configuration settings.
class TaskRunnerSettingsResponse {
  /// Whether to also send taskrunner log info to stderr.
  final bool alsologtostderr;

  /// The location on the worker for task-specific subdirectories.
  final String baseTaskDir;

  /// The base URL for the taskrunner to use when accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, "Relative Uniform Resource Locators". If not specified, the default value is "http://www.googleapis.com/"
  final String baseUrl;

  /// The file to store preprocessing commands in.
  final String commandlinesFileName;

  /// Whether to continue taskrunner if an exception is hit.
  final bool continueOnException;

  /// The API version of endpoint, e.g. "v1b3"
  final String dataflowApiVersion;

  /// The command to launch the worker harness.
  final String harnessCommand;

  /// The suggested backend language.
  final String languageHint;

  /// The directory on the VM to store logs.
  final String logDir;

  /// Whether to send taskrunner log info to Google Compute Engine VM serial console.
  final bool logToSerialconsole;

  /// Indicates where to put logs. If this is not specified, the logs will not be uploaded. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final String logUploadLocation;

  /// The OAuth2 scopes to be requested by the taskrunner in order to access the Cloud Dataflow API.
  final List<String> oauthScopes;

  /// The settings to pass to the parallel worker harness.
  final WorkerSettingsResponse parallelWorkerSettings;

  /// The streaming worker main class name.
  final String streamingWorkerMainClass;

  /// The UNIX group ID on the worker VM to use for tasks launched by taskrunner; e.g. "wheel".
  final String taskGroup;

  /// The UNIX user ID on the worker VM to use for tasks launched by taskrunner; e.g. "root".
  final String taskUser;

  /// The prefix of the resources the taskrunner should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final String tempStoragePrefix;

  /// The ID string of the VM.
  final String vmId;

  /// The file to store the workflow in.
  final String workflowFileName;

  /// Creates a new [TaskRunnerSettingsResponse].
  /// [alsologtostderr] Whether to also send taskrunner log info to stderr.
  /// [baseTaskDir] The location on the worker for task-specific subdirectories.
  /// [baseUrl] The base URL for the taskrunner to use when accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, "Relative Uniform Resource Locators". If not specified, the default value is "http://www.googleapis.com/"
  /// [commandlinesFileName] The file to store preprocessing commands in.
  /// [continueOnException] Whether to continue taskrunner if an exception is hit.
  /// [dataflowApiVersion] The API version of endpoint, e.g. "v1b3"
  /// [harnessCommand] The command to launch the worker harness.
  /// [languageHint] The suggested backend language.
  /// [logDir] The directory on the VM to store logs.
  /// [logToSerialconsole] Whether to send taskrunner log info to Google Compute Engine VM serial console.
  /// [logUploadLocation] Indicates where to put logs. If this is not specified, the logs will not be uploaded. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  /// [oauthScopes] The OAuth2 scopes to be requested by the taskrunner in order to access the Cloud Dataflow API.
  /// [parallelWorkerSettings] The settings to pass to the parallel worker harness.
  /// [streamingWorkerMainClass] The streaming worker main class name.
  /// [taskGroup] The UNIX group ID on the worker VM to use for tasks launched by taskrunner; e.g. "wheel".
  /// [taskUser] The UNIX user ID on the worker VM to use for tasks launched by taskrunner; e.g. "root".
  /// [tempStoragePrefix] The prefix of the resources the taskrunner should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  /// [vmId] The ID string of the VM.
  /// [workflowFileName] The file to store the workflow in.
  TaskRunnerSettingsResponse({
    required this.alsologtostderr,
    required this.baseTaskDir,
    required this.baseUrl,
    required this.commandlinesFileName,
    required this.continueOnException,
    required this.dataflowApiVersion,
    required this.harnessCommand,
    required this.languageHint,
    required this.logDir,
    required this.logToSerialconsole,
    required this.logUploadLocation,
    required this.oauthScopes,
    required this.parallelWorkerSettings,
    required this.streamingWorkerMainClass,
    required this.taskGroup,
    required this.taskUser,
    required this.tempStoragePrefix,
    required this.vmId,
    required this.workflowFileName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alsologtostderr'] = alsologtostderr;
    map['baseTaskDir'] = baseTaskDir;
    map['baseUrl'] = baseUrl;
    map['commandlinesFileName'] = commandlinesFileName;
    map['continueOnException'] = continueOnException;
    map['dataflowApiVersion'] = dataflowApiVersion;
    map['harnessCommand'] = harnessCommand;
    map['languageHint'] = languageHint;
    map['logDir'] = logDir;
    map['logToSerialconsole'] = logToSerialconsole;
    map['logUploadLocation'] = logUploadLocation;
    map['oauthScopes'] = oauthScopes;
    map['parallelWorkerSettings'] = parallelWorkerSettings.toMap();
    map['streamingWorkerMainClass'] = streamingWorkerMainClass;
    map['taskGroup'] = taskGroup;
    map['taskUser'] = taskUser;
    map['tempStoragePrefix'] = tempStoragePrefix;
    map['vmId'] = vmId;
    map['workflowFileName'] = workflowFileName;
    return map;
  }

  factory TaskRunnerSettingsResponse.fromMap(Map<String, dynamic> map) {
    return TaskRunnerSettingsResponse(
      alsologtostderr: map['alsologtostderr'] as bool,
      baseTaskDir: map['baseTaskDir'] as String,
      baseUrl: map['baseUrl'] as String,
      commandlinesFileName: map['commandlinesFileName'] as String,
      continueOnException: map['continueOnException'] as bool,
      dataflowApiVersion: map['dataflowApiVersion'] as String,
      harnessCommand: map['harnessCommand'] as String,
      languageHint: map['languageHint'] as String,
      logDir: map['logDir'] as String,
      logToSerialconsole: map['logToSerialconsole'] as bool,
      logUploadLocation: map['logUploadLocation'] as String,
      oauthScopes: (map['oauthScopes'] as List).cast<String>(),
      parallelWorkerSettings: WorkerSettingsResponse.fromMap(
          (map['parallelWorkerSettings'] as Map).cast<String, dynamic>()),
      streamingWorkerMainClass: map['streamingWorkerMainClass'] as String,
      taskGroup: map['taskGroup'] as String,
      taskUser: map['taskUser'] as String,
      tempStoragePrefix: map['tempStoragePrefix'] as String,
      vmId: map['vmId'] as String,
      workflowFileName: map['workflowFileName'] as String,
    );
  }
}
