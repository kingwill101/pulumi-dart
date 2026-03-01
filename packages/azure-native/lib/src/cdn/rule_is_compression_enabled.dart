/// Indicates whether content compression is enabled. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on AzureFrontDoor when requested content is smaller than 1 byte or larger than 1 MB.
enum RuleIsCompressionEnabled {
  enabled("Enabled"),
  disabled("Disabled");

  const RuleIsCompressionEnabled(this.value);
  final String value;

  static RuleIsCompressionEnabled fromValue(String value) {
    for (final item in RuleIsCompressionEnabled.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleIsCompressionEnabled value: $value');
  }
}

