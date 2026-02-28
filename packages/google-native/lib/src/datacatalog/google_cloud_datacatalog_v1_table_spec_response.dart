// ignore_for_file: unused_element, unnecessary_cast


/// Normal BigQuery table specification.
class GoogleCloudDatacatalogV1TableSpecResponse {
  /// If the table is date-sharded, that is, it matches the `[prefix]YYYYMMDD` name pattern, this field is the Data Catalog resource name of the date-sharded grouped entry. For example: `projects/{PROJECT_ID}/locations/{LOCATION}/entrygroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}`. Otherwise, `grouped_entry` is empty.
  final String groupedEntry;

  /// Creates a new [GoogleCloudDatacatalogV1TableSpecResponse].
  /// [groupedEntry] If the table is date-sharded, that is, it matches the `[prefix]YYYYMMDD` name pattern, this field is the Data Catalog resource name of the date-sharded grouped entry. For example: `projects/{PROJECT_ID}/locations/{LOCATION}/entrygroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}`. Otherwise, `grouped_entry` is empty.
  GoogleCloudDatacatalogV1TableSpecResponse({
    required this.groupedEntry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupedEntry': groupedEntry,
    };
  }

  factory GoogleCloudDatacatalogV1TableSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1TableSpecResponse(
      groupedEntry: map['groupedEntry'] as String,
    );
  }
}

