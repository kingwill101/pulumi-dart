// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionEntrypoint {
  /// The format should be a shell command that can be fed to bash -c.
  final String shell;

  /// Creates a new [FlexibleAppVersionEntrypoint].
  /// [shell] The format should be a shell command that can be fed to bash -c.
  FlexibleAppVersionEntrypoint({required this.shell});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'shell': shell};
  }

  factory FlexibleAppVersionEntrypoint.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionEntrypoint(shell: map['shell'] as String);
  }
}
