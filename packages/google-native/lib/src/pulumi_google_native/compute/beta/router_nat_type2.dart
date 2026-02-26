/// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
enum RouterNatType2 {
  private("PRIVATE"),
  public("PUBLIC");

  const RouterNatType2(this.value);
  final String value;

  static RouterNatType2 fromValue(String value) {
    for (final item in RouterNatType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatType2 value: $value');
  }
}
