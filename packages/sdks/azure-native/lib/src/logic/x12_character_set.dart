/// The X12 character set.
enum X12CharacterSet {
  valueNotSpecified("NotSpecified"),
  valueBasic("Basic"),
  valueExtended("Extended"),
  valueUTF8("UTF8");

  const X12CharacterSet(this.wireValue);
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
