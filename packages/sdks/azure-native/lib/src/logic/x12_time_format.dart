import 'package:pulumi/pulumi.dart' as pulumi;

/// The group header time format.
enum X12TimeFormat implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueHHMM("HHMM"),
  valueHHMMSS("HHMMSS"),
  valueHHMMSSdd("HHMMSSdd"),
  valueHHMMSSd("HHMMSSd");

  const X12TimeFormat(this.wireValue);
  @override
  final String wireValue;

  static X12TimeFormat fromValue(String value) {
    for (final item in X12TimeFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown X12TimeFormat value: $value');
  }
}
