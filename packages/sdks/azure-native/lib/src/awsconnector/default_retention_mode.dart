/// The default Object Lock retention mode you want to apply to new objects placed in the specified bucket. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
enum DefaultRetentionMode {
  cOMPLIANCE("COMPLIANCE"),
  gOVERNANCE("GOVERNANCE");

  const DefaultRetentionMode(this.value);
  final String value;

  static DefaultRetentionMode fromValue(String value) {
    for (final item in DefaultRetentionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultRetentionMode value: $value');
  }
}

