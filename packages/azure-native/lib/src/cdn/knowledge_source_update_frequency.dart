/// Specifies the units of time for scheduling update intervals for the knowledge source.
enum KnowledgeSourceUpdateFrequency {
  everySixHours("EverySixHours"),
  daily("Daily"),
  weekly("Weekly"),
  monthly("Monthly");

  const KnowledgeSourceUpdateFrequency(this.value);
  final String value;

  static KnowledgeSourceUpdateFrequency fromValue(String value) {
    for (final item in KnowledgeSourceUpdateFrequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnowledgeSourceUpdateFrequency value: $value');
  }
}

