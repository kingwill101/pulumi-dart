/// Optional. Immutable. The type of the notebook runtime template.
enum NotebookRuntimeTemplateNotebookRuntimeType2 {
  notebookRuntimeTypeUnspecified("NOTEBOOK_RUNTIME_TYPE_UNSPECIFIED"),
  userDefined("USER_DEFINED"),
  oneClick("ONE_CLICK");

  const NotebookRuntimeTemplateNotebookRuntimeType2(this.value);
  final String value;

  static NotebookRuntimeTemplateNotebookRuntimeType2 fromValue(String value) {
    for (final item in NotebookRuntimeTemplateNotebookRuntimeType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NotebookRuntimeTemplateNotebookRuntimeType2 value: $value');
  }
}
