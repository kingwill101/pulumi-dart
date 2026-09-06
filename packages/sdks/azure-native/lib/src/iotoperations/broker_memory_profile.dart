import 'package:pulumi/pulumi.dart' as pulumi;

/// Memory profile of Broker.
enum BrokerMemoryProfile implements pulumi.PulumiEnum<String> {
  tiny("Tiny"),
  low("Low"),
  medium("Medium"),
  high("High");

  const BrokerMemoryProfile(this.wireValue);
  @override
  final String wireValue;

  static BrokerMemoryProfile fromValue(String value) {
    for (final item in BrokerMemoryProfile.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BrokerMemoryProfile value: $value');
  }
}
