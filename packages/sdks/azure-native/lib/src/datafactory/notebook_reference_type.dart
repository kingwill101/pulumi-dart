/// Synapse notebook reference type.
enum NotebookReferenceType {
  valueNotebookReference("NotebookReference");

  const NotebookReferenceType(this.wireValue);
  final String wireValue;

  static NotebookReferenceType fromValue(String value) {
    for (final item in NotebookReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotebookReferenceType value: $value');
  }
}
