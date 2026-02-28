// ignore_for_file: unused_element, unnecessary_cast

/// ExecAction specifies a command to execute.
class GoogleCloudAiplatformV1beta1ProbeExecActionResponse {
  /// Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  final List<String> command;

  /// Creates a new [GoogleCloudAiplatformV1beta1ProbeExecActionResponse].
  /// [command] Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  GoogleCloudAiplatformV1beta1ProbeExecActionResponse({
    required this.command,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['command'] = command;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ProbeExecActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ProbeExecActionResponse(
      command: (map['command'] as List).cast<String>(),
    );
  }
}
