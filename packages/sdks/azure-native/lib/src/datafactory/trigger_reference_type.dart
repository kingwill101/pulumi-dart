/// Trigger reference type.
enum TriggerReferenceType {
  valueTriggerReference("TriggerReference");

  const TriggerReferenceType(this.value);
  final String value;

  static TriggerReferenceType fromValue(String value) {
    for (final item in TriggerReferenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerReferenceType value: $value');
  }
}

