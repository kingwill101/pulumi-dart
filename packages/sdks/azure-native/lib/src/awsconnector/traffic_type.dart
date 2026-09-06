import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of traffic to log. You can log traffic that the resource accepts or rejects, or all traffic.
enum TrafficType implements pulumi.PulumiEnum<String> {
  aCCEPT("ACCEPT"),
  aLL("ALL"),
  rEJECT("REJECT");

  const TrafficType(this.wireValue);
  @override
  final String wireValue;

  static TrafficType fromValue(String value) {
    for (final item in TrafficType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrafficType value: $value');
  }
}
