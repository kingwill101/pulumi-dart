// ignore_for_file: unused_element, unnecessary_cast

class StandardAppVersionEntrypoint {
  /// The format should be a shell command that can be fed to bash -c.
  final String shell;

  StandardAppVersionEntrypoint({
    required this.shell,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['shell'] = shell;
    return map;
  }

  factory StandardAppVersionEntrypoint.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionEntrypoint(
      shell: map['shell'] as String,
    );
  }
}
