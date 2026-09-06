import 'package:pulumi/pulumi.dart' as pulumi;

/// Content source to apply the Content Filters.
enum RaiPolicyContentSource implements pulumi.PulumiEnum<String> {
  valuePrompt("Prompt"),
  valueCompletion("Completion");

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
