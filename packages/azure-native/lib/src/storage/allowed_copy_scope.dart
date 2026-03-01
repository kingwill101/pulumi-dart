/// Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet.
enum AllowedCopyScope {
  valuePrivateLink("PrivateLink"),
  valueAAD("AAD");

  const AllowedCopyScope(this.value);
  final String value;

  static AllowedCopyScope fromValue(String value) {
    for (final item in AllowedCopyScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowedCopyScope value: $value');
  }
}

