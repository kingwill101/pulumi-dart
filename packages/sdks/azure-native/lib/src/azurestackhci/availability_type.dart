import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the way the update content can be downloaded.
enum AvailabilityType implements pulumi.PulumiEnum<String> {
  valueLocal("Local"),
  valueOnline("Online"),
  valueNotify("Notify");

  const AvailabilityType(this.wireValue);
  @override
  final String wireValue;

  static AvailabilityType fromValue(String value) {
    for (final item in AvailabilityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AvailabilityType value: $value');
  }
}
