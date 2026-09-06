import 'package:pulumi/pulumi.dart' as pulumi;

/// Memory profile of broker.
enum BrokerMemoryProfile implements pulumi.PulumiEnum<String> {
  tiny("tiny"),
  low("low"),
  medium("medium"),
  high("high");

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
