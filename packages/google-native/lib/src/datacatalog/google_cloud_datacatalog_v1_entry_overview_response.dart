// ignore_for_file: unused_element, unnecessary_cast

/// Entry overview fields for rich text descriptions of entries.
class GoogleCloudDatacatalogV1EntryOverviewResponse {
  /// Entry overview with support for rich text. The overview must only contain Unicode characters, and should be formatted using HTML. The maximum length is 10 MiB as this value holds HTML descriptions including encoded images. The maximum length of the text without images is 100 KiB.
  final String overview;

  /// Creates a new [GoogleCloudDatacatalogV1EntryOverviewResponse].
  /// [overview] Entry overview with support for rich text. The overview must only contain Unicode characters, and should be formatted using HTML. The maximum length is 10 MiB as this value holds HTML descriptions including encoded images. The maximum length of the text without images is 100 KiB.
  GoogleCloudDatacatalogV1EntryOverviewResponse({
    required this.overview,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['overview'] = overview;
    return map;
  }

  factory GoogleCloudDatacatalogV1EntryOverviewResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1EntryOverviewResponse(
      overview: map['overview'] as String,
    );
  }
}
