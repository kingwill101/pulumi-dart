// ignore_for_file: unused_element, unnecessary_cast

class NotebookExecutionDirectNotebookSource {
  /// The base64-encoded contents of the input notebook file.
  final String content;

  /// Creates a new [NotebookExecutionDirectNotebookSource].
  /// [content] The base64-encoded contents of the input notebook file.
  NotebookExecutionDirectNotebookSource({
    required this.content,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    return map;
  }

  factory NotebookExecutionDirectNotebookSource.fromMap(
      Map<String, dynamic> map) {
    return NotebookExecutionDirectNotebookSource(
      content: map['content'] as String,
    );
  }
}
