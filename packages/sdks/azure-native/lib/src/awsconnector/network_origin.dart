/// Indicates whether this Access Point allows access from the public Internet. If VpcConfiguration is specified for this Access Point, then NetworkOrigin is VPC, and the Access Point doesn't allow access from the public Internet. Otherwise, NetworkOrigin is Internet, and the Access Point allows access from the public Internet, subject to the Access Point and bucket access policies.
enum NetworkOrigin {
  internet("Internet"),
  vPC("VPC");

  const NetworkOrigin(this.value);
  final String value;

  static NetworkOrigin fromValue(String value) {
    for (final item in NetworkOrigin.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkOrigin value: $value');
  }
}

