/// Required. Type of archive files in this repository.
enum OSPolicyResourceRepositoryResourceAptRepositoryArchiveType2 {
  archiveTypeUnspecified("ARCHIVE_TYPE_UNSPECIFIED"),
  deb("DEB"),
  debSrc("DEB_SRC");

  const OSPolicyResourceRepositoryResourceAptRepositoryArchiveType2(this.value);
  final String value;

  static OSPolicyResourceRepositoryResourceAptRepositoryArchiveType2 fromValue(
      String value) {
    for (final item
        in OSPolicyResourceRepositoryResourceAptRepositoryArchiveType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown OSPolicyResourceRepositoryResourceAptRepositoryArchiveType2 value: $value');
  }
}
