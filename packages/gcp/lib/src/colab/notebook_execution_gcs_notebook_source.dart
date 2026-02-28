// ignore_for_file: unused_element, unnecessary_cast


class NotebookExecutionGcsNotebookSource {
  /// The version of the Cloud Storage object to read. If unset, the current version of the object is read. See https://cloud.google.com/storage/docs/metadata#generation-number.
  final String? generation;
  /// The Cloud Storage uri pointing to the ipynb file.
  final String uri;

  /// Creates a new [NotebookExecutionGcsNotebookSource].
  /// [generation] The version of the Cloud Storage object to read. If unset, the current version of the object is read. See https://cloud.google.com/storage/docs/metadata#generation-number.
  /// [uri] The Cloud Storage uri pointing to the ipynb file.
  NotebookExecutionGcsNotebookSource({
    this.generation,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': ?generation,
      'uri': uri,
    };
  }

  factory NotebookExecutionGcsNotebookSource.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionGcsNotebookSource(
      generation: map['generation'] == null ? null : map['generation'] as String,
      uri: map['uri'] as String,
    );
  }
}

