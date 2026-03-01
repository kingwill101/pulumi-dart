/// The X12 character set.
enum X12CharacterSet {
  valueNotSpecified("NotSpecified"),
  valueBasic("Basic"),
  valueExtended("Extended"),
  valueUTF8("UTF8");

  const X12CharacterSet(this.value);
  final String value;

  static X12CharacterSet fromValue(String value) {
    for (final item in X12CharacterSet.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown X12CharacterSet value: $value');
  }
}

