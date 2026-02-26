/// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
enum ManagedZoneVisibility2 {
  public("public"),
  private("private");

  const ManagedZoneVisibility2(this.value);
  final String value;

  static ManagedZoneVisibility2 fromValue(String value) {
    for (final item in ManagedZoneVisibility2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedZoneVisibility2 value: $value');
  }
}
