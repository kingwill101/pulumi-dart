import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of deadline the scheduled action is supposed to follow for the schedule. If no value is passed, it will default to InitiateAt.
enum DeadlineType implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  initiateAt("InitiateAt"),
  completeBy("CompleteBy");

  const DeadlineType(this.wireValue);
  @override
  final String wireValue;

  static DeadlineType fromValue(String value) {
    for (final item in DeadlineType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeadlineType value: $value');
  }
}
