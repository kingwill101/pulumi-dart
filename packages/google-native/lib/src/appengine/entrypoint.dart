// ignore_for_file: unused_element, unnecessary_cast

/// The entrypoint for the application.
class Entrypoint {
  /// The format should be a shell command that can be fed to bash -c.
  final String? shell;

  /// Creates a new [Entrypoint].
  /// [shell] The format should be a shell command that can be fed to bash -c.
  Entrypoint({
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

  factory Entrypoint.fromMap(Map<String, dynamic> map) {
    return Entrypoint(
      shell: map['shell'] == null ? null : map['shell'] as String,
    );
  }
}
