// ignore_for_file: unused_element, unnecessary_cast

/// Normal BigQuery table spec.
class GoogleCloudDatacatalogV1beta1TableSpecResponse {
  /// If the table is a dated shard, i.e., with name pattern `[prefix]YYYYMMDD`, `grouped_entry` is the Data Catalog resource name of the date sharded grouped entry, for example, `projects/{project_id}/locations/{location}/entrygroups/{entry_group_id}/entries/{entry_id}`. Otherwise, `grouped_entry` is empty.
  final String groupedEntry;

  /// Creates a new [GoogleCloudDatacatalogV1beta1TableSpecResponse].
  /// [groupedEntry] If the table is a dated shard, i.e., with name pattern `[prefix]YYYYMMDD`, `grouped_entry` is the Data Catalog resource name of the date sharded grouped entry, for example, `projects/{project_id}/locations/{location}/entrygroups/{entry_group_id}/entries/{entry_id}`. Otherwise, `grouped_entry` is empty.
  GoogleCloudDatacatalogV1beta1TableSpecResponse({required this.groupedEntry});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'groupedEntry': groupedEntry};
  }

  factory GoogleCloudDatacatalogV1beta1TableSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1beta1TableSpecResponse(
      groupedEntry: map['groupedEntry'] as String,
    );
  }
}
