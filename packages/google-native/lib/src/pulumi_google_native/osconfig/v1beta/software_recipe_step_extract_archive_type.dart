/// Required. The type of the archive to extract.
enum SoftwareRecipeStepExtractArchiveType {
  archiveTypeUnspecified("ARCHIVE_TYPE_UNSPECIFIED"),
  tar("TAR"),
  tarGzip("TAR_GZIP"),
  tarBzip("TAR_BZIP"),
  tarLzma("TAR_LZMA"),
  tarXz("TAR_XZ"),
  zip("ZIP");

  const SoftwareRecipeStepExtractArchiveType(this.value);
  final String value;

  static SoftwareRecipeStepExtractArchiveType fromValue(String value) {
    for (final item in SoftwareRecipeStepExtractArchiveType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SoftwareRecipeStepExtractArchiveType value: $value');
  }
}
