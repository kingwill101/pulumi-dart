/// Required. Type of archive files in this repository.
enum OSPolicyResourceRepositoryResourceAptRepositoryArchiveType {
  archiveTypeUnspecified("ARCHIVE_TYPE_UNSPECIFIED"),
  deb("DEB"),
  debSrc("DEB_SRC");

  const OSPolicyResourceRepositoryResourceAptRepositoryArchiveType(this.value);
  final String value;

  static OSPolicyResourceRepositoryResourceAptRepositoryArchiveType fromValue(
      String value) {
    for (final item
        in OSPolicyResourceRepositoryResourceAptRepositoryArchiveType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown OSPolicyResourceRepositoryResourceAptRepositoryArchiveType value: $value');
  }
}
