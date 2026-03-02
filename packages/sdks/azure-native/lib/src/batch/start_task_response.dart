// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_setting_response.dart';
import 'resource_file_response.dart';
import 'task_container_settings_response.dart';
import 'user_identity_response.dart';

/// In some cases the start task may be re-run even though the node was not rebooted. Due to this, start tasks should be idempotent and exit gracefully if the setup they're performing has already been done. Special care should be taken to avoid start tasks which create breakaway process or install/launch services from the start task working directory, as this will block Batch from being able to re-run the start task.
class StartTaskResponse {
  /// The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. Required if any other properties of the startTask are specified.
  final pulumi.Input<String>? commandLine;
  /// When this is specified, all directories recursively below the AZ_BATCH_NODE_ROOT_DIR (the root of Azure Batch directories on the node) are mapped into the container, all task environment variables are mapped into the container, and the task command line is executed in the container.
  final pulumi.Input<TaskContainerSettingsResponse>? containerSettings;
  /// A list of environment variable settings for the start task.
  final pulumi.Input<List<EnvironmentSettingResponse>>? environmentSettings;
  /// The Batch service retries a task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try the task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries the task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry the task. If the maximum retry count is -1, the Batch service retries the task without limit. Default is 0
  final pulumi.Input<int>? maxTaskRetryCount;
  /// A list of files that the Batch service will download to the compute node before running the command line.
  final pulumi.Input<List<ResourceFileResponse>>? resourceFiles;
  /// If omitted, the task runs as a non-administrative user unique to the task.
  final pulumi.Input<UserIdentityResponse>? userIdentity;
  /// If true and the start task fails on a compute node, the Batch service retries the start task up to its maximum retry count (maxTaskRetryCount). If the task has still not completed successfully after all retries, then the Batch service marks the compute node unusable, and will not schedule tasks to it. This condition can be detected via the node state and scheduling error detail. If false, the Batch service will not wait for the start task to complete. In this case, other tasks can start executing on the compute node while the start task is still running; and even if the start task fails, new tasks will continue to be scheduled on the node. The default is true.
  final pulumi.Input<bool>? waitForSuccess;

  /// Creates a new [StartTaskResponse].
  /// [commandLine] The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. Required if any other properties of the startTask are specified.
  /// [containerSettings] When this is specified, all directories recursively below the AZ_BATCH_NODE_ROOT_DIR (the root of Azure Batch directories on the node) are mapped into the container, all task environment variables are mapped into the container, and the task command line is executed in the container.
  /// [environmentSettings] A list of environment variable settings for the start task.
  /// [maxTaskRetryCount] The Batch service retries a task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try the task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries the task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry the task. If the maximum retry count is -1, the Batch service retries the task without limit. Default is 0
  /// [resourceFiles] A list of files that the Batch service will download to the compute node before running the command line.
  /// [userIdentity] If omitted, the task runs as a non-administrative user unique to the task.
  /// [waitForSuccess] If true and the start task fails on a compute node, the Batch service retries the start task up to its maximum retry count (maxTaskRetryCount). If the task has still not completed successfully after all retries, then the Batch service marks the compute node unusable, and will not schedule tasks to it. This condition can be detected via the node state and scheduling error detail. If false, the Batch service will not wait for the start task to complete. In this case, other tasks can start executing on the compute node while the start task is still running; and even if the start task fails, new tasks will continue to be scheduled on the node. The default is true.
  StartTaskResponse({
    this.commandLine,
    this.containerSettings,
    this.environmentSettings,
    this.maxTaskRetryCount,
    this.resourceFiles,
    this.userIdentity,
    this.waitForSuccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandLine': ?commandLine,
      'containerSettings': ?pulumi.Input.mapOptionalInputValue<TaskContainerSettingsResponse, Map<String, dynamic>>(containerSettings, (value) => value.toMap()),
      'environmentSettings': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentSettingResponse>, List<Map<String, dynamic>>>(environmentSettings, (value) => pulumi.Input.encodeList<EnvironmentSettingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTaskRetryCount': ?maxTaskRetryCount,
      'resourceFiles': ?pulumi.Input.mapOptionalInputValue<List<ResourceFileResponse>, List<Map<String, dynamic>>>(resourceFiles, (value) => pulumi.Input.encodeList<ResourceFileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userIdentity': ?pulumi.Input.mapOptionalInputValue<UserIdentityResponse, Map<String, dynamic>>(userIdentity, (value) => value.toMap()),
      'waitForSuccess': ?waitForSuccess,
    };
  }

  factory StartTaskResponse.fromMap(Map<String, dynamic> map) {
    return StartTaskResponse(
      commandLine: map['commandLine'] == null ? null : (map['commandLine']! as String).input(),
      containerSettings: map['containerSettings'] == null ? null : (TaskContainerSettingsResponse.fromMap((map['containerSettings']! as Map).cast<String, dynamic>())).input(),
      environmentSettings: map['environmentSettings'] == null ? null : (pulumi.Input.decodeList<EnvironmentSettingResponse>(map['environmentSettings']!, (value) => EnvironmentSettingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxTaskRetryCount: map['maxTaskRetryCount'] == null ? null : (map['maxTaskRetryCount']! as int).input(),
      resourceFiles: map['resourceFiles'] == null ? null : (pulumi.Input.decodeList<ResourceFileResponse>(map['resourceFiles']!, (value) => ResourceFileResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userIdentity: map['userIdentity'] == null ? null : (UserIdentityResponse.fromMap((map['userIdentity']! as Map).cast<String, dynamic>())).input(),
      waitForSuccess: map['waitForSuccess'] == null ? null : (map['waitForSuccess']! as bool).input(),
    );
  }
}

