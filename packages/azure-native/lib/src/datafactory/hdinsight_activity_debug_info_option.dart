/// Debug info option.
enum HDInsightActivityDebugInfoOption {
  valueNone("None"),
  valueAlways("Always"),
  valueFailure("Failure");

  const HDInsightActivityDebugInfoOption(this.value);
  final String value;

  static HDInsightActivityDebugInfoOption fromValue(String value) {
    for (final item in HDInsightActivityDebugInfoOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HDInsightActivityDebugInfoOption value: $value');
  }
}

