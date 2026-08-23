/// [Required] Specifies the status of content safety.
enum ContentSafetyStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const ContentSafetyStatus(this.wireValue);
  final String wireValue;

  static ContentSafetyStatus fromValue(String value) {
    for (final item in ContentSafetyStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentSafetyStatus value: $value');
  }
}
