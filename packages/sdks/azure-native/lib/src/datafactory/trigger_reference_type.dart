/// Trigger reference type.
enum TriggerReferenceType {
  triggerReference("TriggerReference");

  const TriggerReferenceType(this.wireValue);
  final String wireValue;

  static TriggerReferenceType fromValue(String value) {
    for (final item in TriggerReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerReferenceType value: $value');
  }
}
