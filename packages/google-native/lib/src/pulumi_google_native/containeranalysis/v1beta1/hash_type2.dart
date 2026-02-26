/// Required. The type of hash that was performed.
enum HashType2 {
  hashTypeUnspecified("HASH_TYPE_UNSPECIFIED"),
  sha256("SHA256"),
  goModuleH1("GO_MODULE_H1"),
  sha512("SHA512");

  const HashType2(this.value);
  final String value;

  static HashType2 fromValue(String value) {
    for (final item in HashType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HashType2 value: $value');
  }
}
