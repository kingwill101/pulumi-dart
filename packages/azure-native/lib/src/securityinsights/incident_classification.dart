/// The reason the incident was closed
enum IncidentClassification {
  valueUndetermined("Undetermined"),
  valueTruePositive("TruePositive"),
  valueBenignPositive("BenignPositive"),
  valueFalsePositive("FalsePositive");

  const IncidentClassification(this.value);
  final String value;

  static IncidentClassification fromValue(String value) {
    for (final item in IncidentClassification.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncidentClassification value: $value');
  }
}

