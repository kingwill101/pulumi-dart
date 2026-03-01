/// Enum of the Target reference type.
enum TargetReferenceType {
  valueChaosTarget("ChaosTarget");

  const TargetReferenceType(this.value);
  final String value;

  static TargetReferenceType fromValue(String value) {
    for (final item in TargetReferenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetReferenceType value: $value');
  }
}

