/// The support status for this SDK version.
enum SdkVersionSdkSupportStatus {
  unknown("UNKNOWN"),
  supported("SUPPORTED"),
  stale("STALE"),
  deprecated("DEPRECATED"),
  unsupported("UNSUPPORTED");

  const SdkVersionSdkSupportStatus(this.value);
  final String value;

  static SdkVersionSdkSupportStatus fromValue(String value) {
    for (final item in SdkVersionSdkSupportStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SdkVersionSdkSupportStatus value: $value');
  }
}
