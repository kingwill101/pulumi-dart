/// Debug info option.
enum HDInsightActivityDebugInfoOption {
  valueNone("None"),
  valueAlways("Always"),
  valueFailure("Failure");

  const HDInsightActivityDebugInfoOption(this.wireValue);
  final String wireValue;

  static HDInsightActivityDebugInfoOption fromValue(String value) {
    for (final item in HDInsightActivityDebugInfoOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown HDInsightActivityDebugInfoOption value: $value',
    );
  }
}
