import 'package:pulumi/pulumi.dart' as pulumi;

/// The group header date format.
enum X12DateFormat implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueCCYYMMDD("CCYYMMDD"),
  valueYYMMDD("YYMMDD");

  const X12DateFormat(this.wireValue);
  @override
  final String wireValue;

  static X12DateFormat fromValue(String value) {
    for (final item in X12DateFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown X12DateFormat value: $value');
  }
}
