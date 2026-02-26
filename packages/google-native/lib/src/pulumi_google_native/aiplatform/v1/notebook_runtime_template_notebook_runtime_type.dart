/// Optional. Immutable. The type of the notebook runtime template.
enum NotebookRuntimeTemplateNotebookRuntimeType {
  notebookRuntimeTypeUnspecified("NOTEBOOK_RUNTIME_TYPE_UNSPECIFIED"),
  userDefined("USER_DEFINED"),
  oneClick("ONE_CLICK");

  const NotebookRuntimeTemplateNotebookRuntimeType(this.value);
  final String value;

  static NotebookRuntimeTemplateNotebookRuntimeType fromValue(String value) {
    for (final item in NotebookRuntimeTemplateNotebookRuntimeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NotebookRuntimeTemplateNotebookRuntimeType value: $value');
  }
}
