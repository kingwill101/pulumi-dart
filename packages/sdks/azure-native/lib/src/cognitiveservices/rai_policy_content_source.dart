/// Content source to apply the Content Filters.
enum RaiPolicyContentSource {
  valuePrompt("Prompt"),
  valueCompletion("Completion"),
  valuePreToolCall("PreToolCall"),
  valuePostToolCall("PostToolCall"),
  valuePreRun("PreRun"),
  valuePostRun("PostRun");

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

