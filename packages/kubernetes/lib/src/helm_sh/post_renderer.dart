// ignore_for_file: unused_element, unnecessary_cast


/// Specification defining the post-renderer to use.
class PostRenderer {
  /// Arguments to pass to the post-renderer command.
  final List<String>? args;
  /// Path to an executable to be used for post rendering.
  final String command;

  /// Creates a new [PostRenderer].
  /// [args] Arguments to pass to the post-renderer command.
  /// [command] Path to an executable to be used for post rendering.
  PostRenderer({
    this.args,
    required this.command,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'command': command,
    };
  }

  factory PostRenderer.fromMap(Map<String, dynamic> map) {
    return PostRenderer(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      command: map['command'] as String,
    );
  }
}

