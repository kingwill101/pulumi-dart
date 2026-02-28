/// The asset type of this authorized orgs desc. Valid values are `ASSET_TYPE_DEVICE`, and `ASSET_TYPE_CREDENTIAL_STRENGTH`.
enum AuthorizedOrgsDescAssetType {
  assetTypeUnspecified("ASSET_TYPE_UNSPECIFIED"),
  assetTypeDevice("ASSET_TYPE_DEVICE"),
  assetTypeCredentialStrength("ASSET_TYPE_CREDENTIAL_STRENGTH");

  const AuthorizedOrgsDescAssetType(this.value);
  final String value;

  static AuthorizedOrgsDescAssetType fromValue(String value) {
    for (final item in AuthorizedOrgsDescAssetType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizedOrgsDescAssetType value: $value');
  }
}
