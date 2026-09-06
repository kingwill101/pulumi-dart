import 'package:pulumi/pulumi.dart' as pulumi;

/// Target destination.
enum DatasetDestinationTarget implements pulumi.PulumiEnum<String> {
  mqtt("Mqtt"),
  brokerStateStore("BrokerStateStore"),
  storage("Storage");

  const DatasetDestinationTarget(this.wireValue);
  @override
  final String wireValue;

  static DatasetDestinationTarget fromValue(String value) {
    for (final item in DatasetDestinationTarget.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatasetDestinationTarget value: $value');
  }
}
