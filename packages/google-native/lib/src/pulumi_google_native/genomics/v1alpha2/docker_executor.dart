// ignore_for_file: unused_element, unnecessary_cast

/// The Docker execuctor specification.
class DockerExecutor {
  /// The command or newline delimited script to run. The command string will be executed within a bash shell. If the command exits with a non-zero exit code, output parameter de-localization will be skipped and the pipeline operation's `error` field will be populated. Maximum command string length is 16384.
  final String cmd;

  /// Image name from either Docker Hub or Google Container Registry. Users that run pipelines must have READ access to the image.
  final String imageName;

  DockerExecutor({
    required this.cmd,
    required this.imageName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cmd'] = cmd;
    map['imageName'] = imageName;
    return map;
  }

  factory DockerExecutor.fromMap(Map<String, dynamic> map) {
    return DockerExecutor(
      cmd: map['cmd'] as String,
      imageName: map['imageName'] as String,
    );
  }
}
