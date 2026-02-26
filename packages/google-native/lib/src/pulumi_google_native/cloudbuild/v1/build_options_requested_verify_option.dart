/// Requested verifiability options.
enum BuildOptionsRequestedVerifyOption {
  notVerified("NOT_VERIFIED"),
  verified("VERIFIED");

  const BuildOptionsRequestedVerifyOption(this.value);
  final String value;

  static BuildOptionsRequestedVerifyOption fromValue(String value) {
    for (final item in BuildOptionsRequestedVerifyOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BuildOptionsRequestedVerifyOption value: $value');
  }
}
