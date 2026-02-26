// ignore_for_file: unused_element, unnecessary_cast

/// Entry overview fields for rich text descriptions of entries.
class GoogleCloudDatacatalogV1EntryOverview {
  /// Entry overview with support for rich text. The overview must only contain Unicode characters, and should be formatted using HTML. The maximum length is 10 MiB as this value holds HTML descriptions including encoded images. The maximum length of the text without images is 100 KiB.
  final String? overview;

  GoogleCloudDatacatalogV1EntryOverview({
    this.overview,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final overviewValue = overview;
    if (overviewValue != null) {
      map['overview'] = overviewValue;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1EntryOverview.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1EntryOverview(
      overview: map['overview'] == null ? null : map['overview'] as String,
    );
  }
}
