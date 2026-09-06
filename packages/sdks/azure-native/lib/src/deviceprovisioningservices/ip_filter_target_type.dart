import 'package:pulumi/pulumi.dart' as pulumi;

/// Target for requests captured by this rule.
enum IpFilterTargetType implements pulumi.PulumiEnum<String> {
  valueAll("all"),
  valueServiceApi("serviceApi"),
  valueDeviceApi("deviceApi");

  const IpFilterTargetType(this.wireValue);
  @override
  final String wireValue;

  static IpFilterTargetType fromValue(String value) {
    for (final item in IpFilterTargetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpFilterTargetType value: $value');
  }
}
