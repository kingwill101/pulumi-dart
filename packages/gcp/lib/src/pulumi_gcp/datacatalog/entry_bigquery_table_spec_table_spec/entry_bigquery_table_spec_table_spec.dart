// ignore_for_file: unused_element, unnecessary_cast

class EntryBigqueryTableSpecTableSpec {
  /// (Output)
  /// If the table is a dated shard, i.e., with name pattern [prefix]YYYYMMDD, groupedEntry is the
  /// Data Catalog resource name of the date sharded grouped entry, for example,
  /// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/entries/{entryId}.
  /// Otherwise, groupedEntry is empty.
  final String? groupedEntry;

  EntryBigqueryTableSpecTableSpec({
    this.groupedEntry,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupedEntryValue = groupedEntry;
    if (groupedEntryValue != null) {
      map['groupedEntry'] = groupedEntryValue;
    }
    return map;
  }

  factory EntryBigqueryTableSpecTableSpec.fromMap(Map<String, dynamic> map) {
    return EntryBigqueryTableSpecTableSpec(
      groupedEntry:
          map['groupedEntry'] == null ? null : map['groupedEntry'] as String,
    );
  }
}
