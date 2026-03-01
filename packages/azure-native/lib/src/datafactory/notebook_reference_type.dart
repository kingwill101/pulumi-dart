/// Synapse notebook reference type.
enum NotebookReferenceType {
  valueNotebookReference("NotebookReference");

  const NotebookReferenceType(this.value);
  final String value;

  static NotebookReferenceType fromValue(String value) {
    for (final item in NotebookReferenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotebookReferenceType value: $value');
  }
}

