/// Specifies how child public delegated prefix will be scoped. It could be one of following values: - `REGIONAL`: The public delegated prefix is regional only. The provisioning will take a few minutes. - `GLOBAL`: The public delegated prefix is global only. The provisioning will take ~4 weeks. - `GLOBAL_AND_REGIONAL` [output only]: The public delegated prefixes is BYOIP V1 legacy prefix. This is output only value and no longer supported in BYOIP V2.
enum PublicAdvertisedPrefixPdpScope2 {
  global("GLOBAL"),
  globalAndRegional("GLOBAL_AND_REGIONAL"),
  regional("REGIONAL");

  const PublicAdvertisedPrefixPdpScope2(this.value);
  final String value;

  static PublicAdvertisedPrefixPdpScope2 fromValue(String value) {
    for (final item in PublicAdvertisedPrefixPdpScope2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PublicAdvertisedPrefixPdpScope2 value: $value');
  }
}
