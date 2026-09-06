import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule
enum ReplicationSchedule implements pulumi.PulumiEnum<String> {
  value10minutely("_10minutely"),
  valueHourly("hourly"),
  valueDaily("daily");

  const ReplicationSchedule(this.wireValue);
  @override
  final String wireValue;

  static ReplicationSchedule fromValue(String value) {
    for (final item in ReplicationSchedule.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationSchedule value: $value');
  }
}
