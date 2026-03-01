// ignore_for_file: unused_element, unnecessary_cast


/// Docker container configuration
class Docker {
  /// Indicate whether container shall run in privileged or non-privileged mode.
  final bool? privileged;

  /// Creates a new [Docker].
  /// [privileged] Indicate whether container shall run in privileged or non-privileged mode.
  Docker({
    this.privileged,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privileged': ?privileged,
    };
  }

  factory Docker.fromMap(Map<String, dynamic> map) {
    return Docker(
      privileged: map['privileged'] == null ? null : map['privileged'] as bool,
    );
  }
}

