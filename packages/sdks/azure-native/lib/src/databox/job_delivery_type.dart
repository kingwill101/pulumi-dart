import 'package:pulumi/pulumi.dart' as pulumi;

/// Delivery type of Job.
enum JobDeliveryType implements pulumi.PulumiEnum<String> {
  valueNonScheduled("NonScheduled"),
  valueScheduled("Scheduled");

  const JobDeliveryType(this.wireValue);
  @override
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
