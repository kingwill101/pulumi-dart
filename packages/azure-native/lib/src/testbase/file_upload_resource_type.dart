/// Resource type for file uploading.
enum FileUploadResourceType {
  valuePackage("Package"),
  valueVHD("VHD");

  const FileUploadResourceType(this.value);
  final String value;

  static FileUploadResourceType fromValue(String value) {
    for (final item in FileUploadResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileUploadResourceType value: $value');
  }
}

