/// Required. Type of archive files in this repository.
enum OSPolicyResourceRepositoryResourceAptRepositoryArchiveTypeOsconfigV1alpha {
  archiveTypeUnspecified("ARCHIVE_TYPE_UNSPECIFIED"),
  deb("DEB"),
  debSrc("DEB_SRC");

  const OSPolicyResourceRepositoryResourceAptRepositoryArchiveTypeOsconfigV1alpha(
    this.value,
  );
  final String value;

  static OSPolicyResourceRepositoryResourceAptRepositoryArchiveTypeOsconfigV1alpha
  fromValue(String value) {
    for (final item
        in OSPolicyResourceRepositoryResourceAptRepositoryArchiveTypeOsconfigV1alpha
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown OSPolicyResourceRepositoryResourceAptRepositoryArchiveTypeOsconfigV1alpha value: $value',
    );
  }
}
