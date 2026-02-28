/// Optional. Immutable. The type of the notebook runtime template.
enum NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1 {
  notebookRuntimeTypeUnspecified("NOTEBOOK_RUNTIME_TYPE_UNSPECIFIED"),
  userDefined("USER_DEFINED"),
  oneClick("ONE_CLICK");

  const NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1(this.value);
  final String value;

  static NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1 fromValue(String value) {
    for (final item in NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1 value: $value');
  }
}

