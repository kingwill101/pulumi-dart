// ignore_for_file: unused_element, unnecessary_cast

import 'worker_settings.dart';

/// Taskrunner configuration settings.
class TaskRunnerSettings {
  /// Whether to also send taskrunner log info to stderr.
  final bool? alsologtostderr;

  /// The location on the worker for task-specific subdirectories.
  final String? baseTaskDir;

  /// The base URL for the taskrunner to use when accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, "Relative Uniform Resource Locators". If not specified, the default value is "http://www.googleapis.com/"
  final String? baseUrl;

  /// The file to store preprocessing commands in.
  final String? commandlinesFileName;

  /// Whether to continue taskrunner if an exception is hit.
  final bool? continueOnException;

  /// The API version of endpoint, e.g. "v1b3"
  final String? dataflowApiVersion;

  /// The command to launch the worker harness.
  final String? harnessCommand;

  /// The suggested backend language.
  final String? languageHint;

  /// The directory on the VM to store logs.
  final String? logDir;

  /// Whether to send taskrunner log info to Google Compute Engine VM serial console.
  final bool? logToSerialconsole;

  /// Indicates where to put logs. If this is not specified, the logs will not be uploaded. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final String? logUploadLocation;

  /// The OAuth2 scopes to be requested by the taskrunner in order to access the Cloud Dataflow API.
  final List<String>? oauthScopes;

  /// The settings to pass to the parallel worker harness.
  final WorkerSettings? parallelWorkerSettings;

  /// The streaming worker main class name.
  final String? streamingWorkerMainClass;

  /// The UNIX group ID on the worker VM to use for tasks launched by taskrunner; e.g. "wheel".
  final String? taskGroup;

  /// The UNIX user ID on the worker VM to use for tasks launched by taskrunner; e.g. "root".
  final String? taskUser;

  /// The prefix of the resources the taskrunner should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final String? tempStoragePrefix;

  /// The ID string of the VM.
  final String? vmId;

  /// The file to store the workflow in.
  final String? workflowFileName;

  TaskRunnerSettings({
    this.alsologtostderr,
    this.baseTaskDir,
    this.baseUrl,
    this.commandlinesFileName,
    this.continueOnException,
    this.dataflowApiVersion,
    this.harnessCommand,
    this.languageHint,
    this.logDir,
    this.logToSerialconsole,
    this.logUploadLocation,
    this.oauthScopes,
    this.parallelWorkerSettings,
    this.streamingWorkerMainClass,
    this.taskGroup,
    this.taskUser,
    this.tempStoragePrefix,
    this.vmId,
    this.workflowFileName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alsologtostderrValue = alsologtostderr;
    if (alsologtostderrValue != null) {
      map['alsologtostderr'] = alsologtostderrValue;
    }
    final baseTaskDirValue = baseTaskDir;
    if (baseTaskDirValue != null) {
      map['baseTaskDir'] = baseTaskDirValue;
    }
    final baseUrlValue = baseUrl;
    if (baseUrlValue != null) {
      map['baseUrl'] = baseUrlValue;
    }
    final commandlinesFileNameValue = commandlinesFileName;
    if (commandlinesFileNameValue != null) {
      map['commandlinesFileName'] = commandlinesFileNameValue;
    }
    final continueOnExceptionValue = continueOnException;
    if (continueOnExceptionValue != null) {
      map['continueOnException'] = continueOnExceptionValue;
    }
    final dataflowApiVersionValue = dataflowApiVersion;
    if (dataflowApiVersionValue != null) {
      map['dataflowApiVersion'] = dataflowApiVersionValue;
    }
    final harnessCommandValue = harnessCommand;
    if (harnessCommandValue != null) {
      map['harnessCommand'] = harnessCommandValue;
    }
    final languageHintValue = languageHint;
    if (languageHintValue != null) {
      map['languageHint'] = languageHintValue;
    }
    final logDirValue = logDir;
    if (logDirValue != null) {
      map['logDir'] = logDirValue;
    }
    final logToSerialconsoleValue = logToSerialconsole;
    if (logToSerialconsoleValue != null) {
      map['logToSerialconsole'] = logToSerialconsoleValue;
    }
    final logUploadLocationValue = logUploadLocation;
    if (logUploadLocationValue != null) {
      map['logUploadLocation'] = logUploadLocationValue;
    }
    final oauthScopesValue = oauthScopes;
    if (oauthScopesValue != null) {
      map['oauthScopes'] = oauthScopesValue;
    }
    final parallelWorkerSettingsValue = parallelWorkerSettings;
    if (parallelWorkerSettingsValue != null) {
      map['parallelWorkerSettings'] = parallelWorkerSettingsValue.toMap();
    }
    final streamingWorkerMainClassValue = streamingWorkerMainClass;
    if (streamingWorkerMainClassValue != null) {
      map['streamingWorkerMainClass'] = streamingWorkerMainClassValue;
    }
    final taskGroupValue = taskGroup;
    if (taskGroupValue != null) {
      map['taskGroup'] = taskGroupValue;
    }
    final taskUserValue = taskUser;
    if (taskUserValue != null) {
      map['taskUser'] = taskUserValue;
    }
    final tempStoragePrefixValue = tempStoragePrefix;
    if (tempStoragePrefixValue != null) {
      map['tempStoragePrefix'] = tempStoragePrefixValue;
    }
    final vmIdValue = vmId;
    if (vmIdValue != null) {
      map['vmId'] = vmIdValue;
    }
    final workflowFileNameValue = workflowFileName;
    if (workflowFileNameValue != null) {
      map['workflowFileName'] = workflowFileNameValue;
    }
    return map;
  }

  factory TaskRunnerSettings.fromMap(Map<String, dynamic> map) {
    return TaskRunnerSettings(
      alsologtostderr: map['alsologtostderr'] == null
          ? null
          : map['alsologtostderr'] as bool,
      baseTaskDir:
          map['baseTaskDir'] == null ? null : map['baseTaskDir'] as String,
      baseUrl: map['baseUrl'] == null ? null : map['baseUrl'] as String,
      commandlinesFileName: map['commandlinesFileName'] == null
          ? null
          : map['commandlinesFileName'] as String,
      continueOnException: map['continueOnException'] == null
          ? null
          : map['continueOnException'] as bool,
      dataflowApiVersion: map['dataflowApiVersion'] == null
          ? null
          : map['dataflowApiVersion'] as String,
      harnessCommand: map['harnessCommand'] == null
          ? null
          : map['harnessCommand'] as String,
      languageHint:
          map['languageHint'] == null ? null : map['languageHint'] as String,
      logDir: map['logDir'] == null ? null : map['logDir'] as String,
      logToSerialconsole: map['logToSerialconsole'] == null
          ? null
          : map['logToSerialconsole'] as bool,
      logUploadLocation: map['logUploadLocation'] == null
          ? null
          : map['logUploadLocation'] as String,
      oauthScopes: map['oauthScopes'] == null
          ? null
          : (map['oauthScopes'] as List).cast<String>(),
      parallelWorkerSettings: map['parallelWorkerSettings'] == null
          ? null
          : WorkerSettings.fromMap(
              (map['parallelWorkerSettings'] as Map).cast<String, dynamic>()),
      streamingWorkerMainClass: map['streamingWorkerMainClass'] == null
          ? null
          : map['streamingWorkerMainClass'] as String,
      taskGroup: map['taskGroup'] == null ? null : map['taskGroup'] as String,
      taskUser: map['taskUser'] == null ? null : map['taskUser'] as String,
      tempStoragePrefix: map['tempStoragePrefix'] == null
          ? null
          : map['tempStoragePrefix'] as String,
      vmId: map['vmId'] == null ? null : map['vmId'] as String,
      workflowFileName: map['workflowFileName'] == null
          ? null
          : map['workflowFileName'] as String,
    );
  }
}
