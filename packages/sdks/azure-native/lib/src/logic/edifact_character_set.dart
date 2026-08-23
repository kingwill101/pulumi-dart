/// The EDIFACT frame setting characterSet.
enum EdifactCharacterSet {
  valueNotSpecified("NotSpecified"),
  valueUNOB("UNOB"),
  valueUNOA("UNOA"),
  valueUNOC("UNOC"),
  valueUNOD("UNOD"),
  valueUNOE("UNOE"),
  valueUNOF("UNOF"),
  valueUNOG("UNOG"),
  valueUNOH("UNOH"),
  valueUNOI("UNOI"),
  valueUNOJ("UNOJ"),
  valueUNOK("UNOK"),
  valueUNOX("UNOX"),
  valueUNOY("UNOY"),
  valueKECA("KECA");

  const EdifactCharacterSet(this.wireValue);
  final String wireValue;

  static EdifactCharacterSet fromValue(String value) {
    for (final item in EdifactCharacterSet.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdifactCharacterSet value: $value');
  }
}
