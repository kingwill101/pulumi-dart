/// Content source to apply the Content Filters.
enum RaiPolicyContentSource {
  valuePrompt("Prompt"),
  valueCompletion("Completion"),
  valuePreToolCall("PreToolCall"),
  valuePostToolCall("PostToolCall"),
  valuePreRun("PreRun"),
  valuePostRun("PostRun");

  const RaiPolicyContentSource(this.value);
  final String value;

  static RaiPolicyContentSource fromValue(String value) {
    for (final item in RaiPolicyContentSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RaiPolicyContentSource value: $value');
  }
}

