/// Describes how a search service should enforce compliance if it finds objects that aren't encrypted with the customer-managed key.
enum SearchEncryptionWithCmk {
  disabled("Disabled"),
  enabled("Enabled"),
  unspecified("Unspecified");

  const SearchEncryptionWithCmk(this.value);
  final String value;

  static SearchEncryptionWithCmk fromValue(String value) {
    for (final item in SearchEncryptionWithCmk.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SearchEncryptionWithCmk value: $value');
  }
}

