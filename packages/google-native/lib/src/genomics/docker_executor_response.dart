// ignore_for_file: unused_element, unnecessary_cast

/// The Docker execuctor specification.
class DockerExecutorResponse {
  /// The command or newline delimited script to run. The command string will be executed within a bash shell. If the command exits with a non-zero exit code, output parameter de-localization will be skipped and the pipeline operation's `error` field will be populated. Maximum command string length is 16384.
  final String cmd;

  /// Image name from either Docker Hub or Google Container Registry. Users that run pipelines must have READ access to the image.
  final String imageName;

  /// Creates a new [DockerExecutorResponse].
  /// [cmd] The command or newline delimited script to run. The command string will be executed within a bash shell. If the command exits with a non-zero exit code, output parameter de-localization will be skipped and the pipeline operation's `error` field will be populated. Maximum command string length is 16384.
  /// [imageName] Image name from either Docker Hub or Google Container Registry. Users that run pipelines must have READ access to the image.
  DockerExecutorResponse({
    required this.cmd,
    required this.imageName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cmd'] = cmd;
    map['imageName'] = imageName;
    return map;
  }

  factory DockerExecutorResponse.fromMap(Map<String, dynamic> map) {
    return DockerExecutorResponse(
      cmd: map['cmd'] as String,
      imageName: map['imageName'] as String,
    );
  }
}
