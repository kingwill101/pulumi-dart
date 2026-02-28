// ignore_for_file: unused_element, unnecessary_cast


/// The entrypoint for the application.
class EntrypointResponse {
  /// The format should be a shell command that can be fed to bash -c.
  final String shell;

  /// Creates a new [EntrypointResponse].
  /// [shell] The format should be a shell command that can be fed to bash -c.
  EntrypointResponse({
    required this.shell,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shell': shell,
    };
  }

  factory EntrypointResponse.fromMap(Map<String, dynamic> map) {
    return EntrypointResponse(
      shell: map['shell'] as String,
    );
  }
}

