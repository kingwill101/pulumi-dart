// ignore_for_file: unused_element, unnecessary_cast


/// Docker container configuration
class DockerResponse {
  /// Indicate whether container shall run in privileged or non-privileged mode.
  final bool? privileged;

  /// Creates a new [DockerResponse].
  /// [privileged] Indicate whether container shall run in privileged or non-privileged mode.
  DockerResponse({
    this.privileged,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privileged': ?privileged,
    };
  }

  factory DockerResponse.fromMap(Map<String, dynamic> map) {
    return DockerResponse(
      privileged: map['privileged'] == null ? null : map['privileged'] as bool,
    );
  }
}

