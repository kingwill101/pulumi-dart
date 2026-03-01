/// Indicates the error code if the background copy of a resource created via the CopyStart operation fails.
enum CopyCompletionErrorReason {
  copySourceNotFound("CopySourceNotFound");

  const CopyCompletionErrorReason(this.value);
  final String value;

  static CopyCompletionErrorReason fromValue(String value) {
    for (final item in CopyCompletionErrorReason.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CopyCompletionErrorReason value: $value');
  }
}

