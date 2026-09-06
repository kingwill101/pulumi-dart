import 'package:pulumi/pulumi.dart' as pulumi;

/// The service level of the file system
enum ServiceLevel implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueUltra("Ultra"),
  valueStandardZRS("StandardZRS");

  const ServiceLevel(this.wireValue);
  @override
  final String wireValue;

  static ServiceLevel fromValue(String value) {
    for (final item in ServiceLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceLevel value: $value');
  }
}
