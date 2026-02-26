/// The medium on which the data is stored. Acceptable values today is only MEMORY or none. When none, the default will currently be backed by memory but could change over time. +optional
enum GoogleCloudRunV2EmptyDirVolumeSourceMedium {
  mediumUnspecified("MEDIUM_UNSPECIFIED"),
  memory("MEMORY");

  const GoogleCloudRunV2EmptyDirVolumeSourceMedium(this.value);
  final String value;

  static GoogleCloudRunV2EmptyDirVolumeSourceMedium fromValue(String value) {
    for (final item in GoogleCloudRunV2EmptyDirVolumeSourceMedium.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudRunV2EmptyDirVolumeSourceMedium value: $value');
  }
}
