import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 character set.
enum X12CharacterSet implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueBasic("Basic"),
  valueExtended("Extended"),
  valueUTF8("UTF8");

  const X12CharacterSet(this.wireValue);
  @override
  final String wireValue;

  static X12CharacterSet fromValue(String value) {
    for (final item in X12CharacterSet.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown X12CharacterSet value: $value');
  }
}
