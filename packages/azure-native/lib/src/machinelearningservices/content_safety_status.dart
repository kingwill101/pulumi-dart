/// [Required] Specifies the status of content safety.
enum ContentSafetyStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ContentSafetyStatus(this.value);
  final String value;

  static ContentSafetyStatus fromValue(String value) {
    for (final item in ContentSafetyStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentSafetyStatus value: $value');
  }
}

