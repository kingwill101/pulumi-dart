// ignore_for_file: unused_element, unnecessary_cast

/// The entrypoint for the application.
class EntrypointResponse2 {
  /// The format should be a shell command that can be fed to bash -c.
  final String shell;

  EntrypointResponse2({
    required this.shell,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['shell'] = shell;
    return map;
  }

  factory EntrypointResponse2.fromMap(Map<String, dynamic> map) {
    return EntrypointResponse2(
      shell: map['shell'] as String,
    );
  }
}
