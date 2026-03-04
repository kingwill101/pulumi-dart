/// The redirect type the rule will use when redirecting traffic.
enum FrontDoorRedirectType {
  valueMoved("Moved"),
  valueFound("Found"),
  valueTemporaryRedirect("TemporaryRedirect"),
  valuePermanentRedirect("PermanentRedirect");

  const FrontDoorRedirectType(this.wireValue);
  final String wireValue;

  static FrontDoorRedirectType fromValue(String value) {
    for (final item in FrontDoorRedirectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorRedirectType value: $value');
  }
}
