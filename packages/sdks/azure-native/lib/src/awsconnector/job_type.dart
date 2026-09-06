import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum JobType implements pulumi.PulumiEnum<String> {
  oNETIME("ONE_TIME"),
  sCHEDULED("SCHEDULED");

  const JobType(this.wireValue);
  @override
  final String wireValue;

  static JobType fromValue(String value) {
    for (final item in JobType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobType value: $value');
  }
}
