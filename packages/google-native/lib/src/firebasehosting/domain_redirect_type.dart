/// Required. The redirect status code.
enum DomainRedirectType {
  redirectTypeUnspecified("REDIRECT_TYPE_UNSPECIFIED"),
  movedPermanently("MOVED_PERMANENTLY");

  const DomainRedirectType(this.value);
  final String value;

  static DomainRedirectType fromValue(String value) {
    for (final item in DomainRedirectType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainRedirectType value: $value');
  }
}
