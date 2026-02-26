/// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
enum RouterNatType3 {
  private("PRIVATE"),
  public("PUBLIC");

  const RouterNatType3(this.value);
  final String value;

  static RouterNatType3 fromValue(String value) {
    for (final item in RouterNatType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatType3 value: $value');
  }
}
