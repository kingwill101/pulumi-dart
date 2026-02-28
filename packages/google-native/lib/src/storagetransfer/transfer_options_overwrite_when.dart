/// When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwrite_objects_already_existing_in_sink.
enum TransferOptionsOverwriteWhen {
  overwriteWhenUnspecified("OVERWRITE_WHEN_UNSPECIFIED"),
  different("DIFFERENT"),
  never("NEVER"),
  always("ALWAYS");

  const TransferOptionsOverwriteWhen(this.value);
  final String value;

  static TransferOptionsOverwriteWhen fromValue(String value) {
    for (final item in TransferOptionsOverwriteWhen.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransferOptionsOverwriteWhen value: $value');
  }
}

