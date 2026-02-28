/// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
enum RouterNatTypeComputeV1 {
  private("PRIVATE"),
  public("PUBLIC");

  const RouterNatTypeComputeV1(this.value);
  final String value;

  static RouterNatTypeComputeV1 fromValue(String value) {
    for (final item in RouterNatTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatTypeComputeV1 value: $value');
  }
}

