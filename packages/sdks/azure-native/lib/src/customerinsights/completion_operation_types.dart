/// The type of completion operation.
enum CompletionOperationTypes {
  valueDoNothing("DoNothing"),
  valueDeleteFile("DeleteFile"),
  valueMoveFile("MoveFile");

  const CompletionOperationTypes(this.wireValue);
  final String wireValue;

  static CompletionOperationTypes fromValue(String value) {
    for (final item in CompletionOperationTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompletionOperationTypes value: $value');
  }
}

