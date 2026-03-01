// ignore_for_file: unused_element, unnecessary_cast

/// ExecAction specifies a command to execute.
class GoogleCloudAiplatformV1beta1ProbeExecAction {
  /// Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  final List<String>? command;

  /// Creates a new [GoogleCloudAiplatformV1beta1ProbeExecAction].
  /// [command] Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  GoogleCloudAiplatformV1beta1ProbeExecAction({this.command});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'command': ?command};
  }

  factory GoogleCloudAiplatformV1beta1ProbeExecAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1ProbeExecAction(
      command: map['command'] == null
          ? null
          : (map['command'] as List).cast<String>(),
    );
  }
}
