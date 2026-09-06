import 'package:pulumi/pulumi.dart' as pulumi;

/// Debug info option.
enum HDInsightActivityDebugInfoOption implements pulumi.PulumiEnum<String> {
  none("None"),
  always("Always"),
  failure("Failure");

  const HDInsightActivityDebugInfoOption(this.wireValue);
  @override
  final String wireValue;

  static HDInsightActivityDebugInfoOption fromValue(String value) {
    for (final item in HDInsightActivityDebugInfoOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HDInsightActivityDebugInfoOption value: $value');
  }
}
