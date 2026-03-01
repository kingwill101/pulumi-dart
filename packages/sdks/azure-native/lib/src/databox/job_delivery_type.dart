/// Delivery type of Job.
enum JobDeliveryType {
  valueNonScheduled("NonScheduled"),
  valueScheduled("Scheduled");

  const JobDeliveryType(this.value);
  final String value;

  static JobDeliveryType fromValue(String value) {
    for (final item in JobDeliveryType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobDeliveryType value: $value');
  }
}

