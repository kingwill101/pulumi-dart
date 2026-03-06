// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_setting.dart';
import 'resource_file.dart';
import 'task_container_settings.dart';
import 'user_identity.dart';

/// In some cases the start task may be re-run even though the node was not rebooted. Due to this, start tasks should be idempotent and exit gracefully if the setup they're performing has already been done. Special care should be taken to avoid start tasks which create breakaway process or install/launch services from the start task working directory, as this will block Batch from being able to re-run the start task.
class StartTask {
  /// The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. Required if any other properties of the startTask are specified.
  final pulumi.Input<String>? commandLine;
  /// When this is specified, all directories recursively below the AZ_BATCH_NODE_ROOT_DIR (the root of Azure Batch directories on the node) are mapped into the container, all task environment variables are mapped into the container, and the task command line is executed in the container.
  final pulumi.Input<TaskContainerSettings>? containerSettings;
  /// A list of environment variable settings for the start task.
  final pulumi.Input<List<EnvironmentSetting>>? environmentSettings;
  /// The Batch service retries a task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try the task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries the task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry the task. If the maximum retry count is -1, the Batch service retries the task without limit. Default is 0
  final pulumi.Input<int>? maxTaskRetryCount;
  /// A list of files that the Batch service will download to the compute node before running the command line.
  final pulumi.Input<List<ResourceFile>>? resourceFiles;
  /// If omitted, the task runs as a non-administrative user unique to the task.
  final pulumi.Input<UserIdentity>? userIdentity;
  /// If true and the start task fails on a compute node, the Batch service retries the start task up to its maximum retry count (maxTaskRetryCount). If the task has still not completed successfully after all retries, then the Batch service marks the compute node unusable, and will not schedule tasks to it. This condition can be detected via the node state and scheduling error detail. If false, the Batch service will not wait for the start task to complete. In this case, other tasks can start executing on the compute node while the start task is still running; and even if the start task fails, new tasks will continue to be scheduled on the node. The default is true.
  final pulumi.Input<bool>? waitForSuccess;

  /// Creates a new [StartTask].
  /// [commandLine] The command line does not run under a shell, and therefore cannot take advantage of shell features such as environment variable expansion. If you want to take advantage of such features, you should invoke the shell in the command line, for example using "cmd /c MyCommand" in Windows or "/bin/sh -c MyCommand" in Linux. Required if any other properties of the startTask are specified.
  /// [containerSettings] When this is specified, all directories recursively below the AZ_BATCH_NODE_ROOT_DIR (the root of Azure Batch directories on the node) are mapped into the container, all task environment variables are mapped into the container, and the task command line is executed in the container.
  /// [environmentSettings] A list of environment variable settings for the start task.
  /// [maxTaskRetryCount] The Batch service retries a task if its exit code is nonzero. Note that this value specifically controls the number of retries. The Batch service will try the task once, and may then retry up to this limit. For example, if the maximum retry count is 3, Batch tries the task up to 4 times (one initial try and 3 retries). If the maximum retry count is 0, the Batch service does not retry the task. If the maximum retry count is -1, the Batch service retries the task without limit. Default is 0
  /// [resourceFiles] A list of files that the Batch service will download to the compute node before running the command line.
  /// [userIdentity] If omitted, the task runs as a non-administrative user unique to the task.
  /// [waitForSuccess] If true and the start task fails on a compute node, the Batch service retries the start task up to its maximum retry count (maxTaskRetryCount). If the task has still not completed successfully after all retries, then the Batch service marks the compute node unusable, and will not schedule tasks to it. This condition can be detected via the node state and scheduling error detail. If false, the Batch service will not wait for the start task to complete. In this case, other tasks can start executing on the compute node while the start task is still running; and even if the start task fails, new tasks will continue to be scheduled on the node. The default is true.
  const StartTask({
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
      'containerSettings': ?pulumi.Input.mapOptionalInputValue<TaskContainerSettings, Map<String, dynamic>>(containerSettings, (value) => value.toMap()),
      'environmentSettings': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentSetting>, List<Map<String, dynamic>>>(environmentSettings, (value) => pulumi.Input.encodeList<EnvironmentSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTaskRetryCount': ?maxTaskRetryCount,
      'resourceFiles': ?pulumi.Input.mapOptionalInputValue<List<ResourceFile>, List<Map<String, dynamic>>>(resourceFiles, (value) => pulumi.Input.encodeList<ResourceFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userIdentity': ?pulumi.Input.mapOptionalInputValue<UserIdentity, Map<String, dynamic>>(userIdentity, (value) => value.toMap()),
      'waitForSuccess': ?waitForSuccess,
    };
  }

  factory StartTask.fromMap(Map<String, dynamic> map) {
    return StartTask(
      commandLine: (() { final guardedValue = map['commandLine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerSettings: (() { final guardedValue = map['containerSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskContainerSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentSettings: (() { final guardedValue = map['environmentSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentSetting>(guardedValue, (value) => EnvironmentSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxTaskRetryCount: (() { final guardedValue = map['maxTaskRetryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceFiles: (() { final guardedValue = map['resourceFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceFile>(guardedValue, (value) => ResourceFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userIdentity: (() { final guardedValue = map['userIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitForSuccess: (() { final guardedValue = map['waitForSuccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

