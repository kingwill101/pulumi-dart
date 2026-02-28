// ignore_for_file: unused_element, unnecessary_cast

class StreamRuleSetCustomizationRuleBigqueryClustering {
  /// Column names to set as clustering columns.
  final List<String> columns;

  /// Creates a new [StreamRuleSetCustomizationRuleBigqueryClustering].
  /// [columns] Column names to set as clustering columns.
  StreamRuleSetCustomizationRuleBigqueryClustering({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] = columns;
    return map;
  }

  factory StreamRuleSetCustomizationRuleBigqueryClustering.fromMap(
      Map<String, dynamic> map) {
    return StreamRuleSetCustomizationRuleBigqueryClustering(
      columns: (map['columns'] as List).cast<String>(),
    );
  }
}
