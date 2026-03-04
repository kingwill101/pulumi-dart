/// Specifies the units of time for scheduling update intervals for the knowledge source.
enum KnowledgeSourceUpdateFrequency {
  everySixHours("EverySixHours"),
  daily("Daily"),
  weekly("Weekly"),
  monthly("Monthly");

  const KnowledgeSourceUpdateFrequency(this.wireValue);
  final String wireValue;

  static KnowledgeSourceUpdateFrequency fromValue(String value) {
    for (final item in KnowledgeSourceUpdateFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnowledgeSourceUpdateFrequency value: $value');
  }
}
