/// Indicates the error code if the background copy of a resource created via the CopyStart operation fails.
enum CopyCompletionErrorReason {
  copySourceNotFound("CopySourceNotFound");

  const CopyCompletionErrorReason(this.wireValue);
  final String wireValue;

  static CopyCompletionErrorReason fromValue(String value) {
    for (final item in CopyCompletionErrorReason.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CopyCompletionErrorReason value: $value');
  }
}

