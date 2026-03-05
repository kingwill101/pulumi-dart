/// Enum of the Target reference type.
enum TargetReferenceType {
  valueChaosTarget("ChaosTarget");

  const TargetReferenceType(this.wireValue);
  final String wireValue;

  static TargetReferenceType fromValue(String value) {
    for (final item in TargetReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetReferenceType value: $value');
  }
}

