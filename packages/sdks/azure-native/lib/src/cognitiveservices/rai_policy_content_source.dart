import 'package:pulumi/pulumi.dart' as pulumi;

/// Content source to apply the Content Filters.
enum RaiPolicyContentSource implements pulumi.PulumiEnum<String> {
  prompt("Prompt"),
  completion("Completion"),
  preToolCall("PreToolCall"),
  postToolCall("PostToolCall"),
  preRun("PreRun"),
  postRun("PostRun");

  const RaiPolicyContentSource(this.wireValue);
  @override
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
