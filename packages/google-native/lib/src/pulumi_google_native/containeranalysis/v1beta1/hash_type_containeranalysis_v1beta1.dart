/// Required. The type of hash that was performed.
enum HashTypeContaineranalysisV1beta1 {
  hashTypeUnspecified("HASH_TYPE_UNSPECIFIED"),
  sha256("SHA256"),
  goModuleH1("GO_MODULE_H1"),
  sha512("SHA512");

  const HashTypeContaineranalysisV1beta1(this.value);
  final String value;

  static HashTypeContaineranalysisV1beta1 fromValue(String value) {
    for (final item in HashTypeContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown HashTypeContaineranalysisV1beta1 value: $value');
  }
}
