/// The version of the policy language that you want to use. As a best practice, use the latest '2012-10-17' version.
enum PolicyDocumentVersion {
  resource20121017("2012-10-17"),
  resource20081017("2008-10-17");

  const PolicyDocumentVersion(this.value);
  final String value;

  static PolicyDocumentVersion fromValue(String value) {
    for (final item in PolicyDocumentVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyDocumentVersion value: $value');
  }
}

