/// Content source to apply the Content Filters.
enum RaiPolicyContentSource {
  prompt("Prompt"),
  completion("Completion"),
  preToolCall("PreToolCall"),
  postToolCall("PostToolCall"),
  preRun("PreRun"),
  postRun("PostRun");

  const RaiPolicyContentSource(this.wireValue);
  final String wireValue;

  static RaiPolicyContentSource fromValue(String value) {
    for (final item in RaiPolicyContentSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RaiPolicyContentSource value: $value');
  }
}
