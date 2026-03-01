// ignore_for_file: unused_element, unnecessary_cast

class RuntimeNotebookRuntimeTemplateRef {
  /// The resource name of the NotebookRuntimeTemplate based on which a NotebookRuntime will be created.
  final String notebookRuntimeTemplate;

  /// Creates a new [RuntimeNotebookRuntimeTemplateRef].
  /// [notebookRuntimeTemplate] The resource name of the NotebookRuntimeTemplate based on which a NotebookRuntime will be created.
  RuntimeNotebookRuntimeTemplateRef({required this.notebookRuntimeTemplate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notebookRuntimeTemplate': notebookRuntimeTemplate,
    };
  }

  factory RuntimeNotebookRuntimeTemplateRef.fromMap(Map<String, dynamic> map) {
    return RuntimeNotebookRuntimeTemplateRef(
      notebookRuntimeTemplate: map['notebookRuntimeTemplate'] as String,
    );
  }
}
