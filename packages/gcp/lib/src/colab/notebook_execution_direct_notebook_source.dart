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
    return <String, dynamic>{
      'content': content,
    };
  }

  factory NotebookExecutionDirectNotebookSource.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionDirectNotebookSource(
      content: map['content'] as String,
    );
  }
}

