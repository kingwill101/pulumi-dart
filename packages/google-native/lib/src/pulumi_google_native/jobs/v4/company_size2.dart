/// The employer's company size.
enum CompanySize2 {
  companySizeUnspecified("COMPANY_SIZE_UNSPECIFIED"),
  mini("MINI"),
  small("SMALL"),
  smedium("SMEDIUM"),
  medium("MEDIUM"),
  big("BIG"),
  bigger("BIGGER"),
  giant("GIANT");

  const CompanySize2(this.value);
  final String value;

  static CompanySize2 fromValue(String value) {
    for (final item in CompanySize2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompanySize2 value: $value');
  }
}
