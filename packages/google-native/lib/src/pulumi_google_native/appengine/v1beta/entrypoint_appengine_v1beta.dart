// ignore_for_file: unused_element, unnecessary_cast

/// The entrypoint for the application.
class EntrypointAppengineV1beta {
  /// The format should be a shell command that can be fed to bash -c.
  final String? shell;

  EntrypointAppengineV1beta({
    this.shell,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final shellValue = shell;
    if (shellValue != null) {
      map['shell'] = shellValue;
    }
    return map;
  }

  factory EntrypointAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return EntrypointAppengineV1beta(
      shell: map['shell'] == null ? null : map['shell'] as String,
    );
  }
}
