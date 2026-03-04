/// Delivery type of Job.
enum JobDeliveryType {
  valueNonScheduled("NonScheduled"),
  valueScheduled("Scheduled");

  const JobDeliveryType(this.wireValue);
  final String wireValue;

  static JobDeliveryType fromValue(String value) {
    for (final item in JobDeliveryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobDeliveryType value: $value');
  }
}
