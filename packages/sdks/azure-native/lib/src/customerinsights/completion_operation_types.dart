/// The type of completion operation.
enum CompletionOperationTypes {
  valueDoNothing("DoNothing"),
  valueDeleteFile("DeleteFile"),
  valueMoveFile("MoveFile");

  const CompletionOperationTypes(this.value);
  final String value;

  static CompletionOperationTypes fromValue(String value) {
    for (final item in CompletionOperationTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompletionOperationTypes value: $value');
  }
}

