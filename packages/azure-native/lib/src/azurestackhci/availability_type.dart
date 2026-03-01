/// Indicates the way the update content can be downloaded.
enum AvailabilityType {
  valueLocal("Local"),
  valueOnline("Online"),
  valueNotify("Notify");

  const AvailabilityType(this.value);
  final String value;

  static AvailabilityType fromValue(String value) {
    for (final item in AvailabilityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AvailabilityType value: $value');
  }
}

