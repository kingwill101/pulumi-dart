/// The type of the entry. Only used for Entries with types in the EntryType enum.
enum EntryType2 {
  entryTypeUnspecified("ENTRY_TYPE_UNSPECIFIED"),
  table("TABLE"),
  model("MODEL"),
  dataStream("DATA_STREAM"),
  fileset("FILESET");

  const EntryType2(this.value);
  final String value;

  static EntryType2 fromValue(String value) {
    for (final item in EntryType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntryType2 value: $value');
  }
}
