// ignore_for_file: unused_element, unnecessary_cast

import 'hive_table_options_response.dart';

/// Result data returned by getTable.
class GetTableResult {
  /// The creation time of the table.
  final String createTime;

  /// The deletion time of the table. Only set after the table is deleted.
  final String deleteTime;

  /// The checksum of a table object computed by the server based on the value of other fields. It may be sent on update requests to ensure the client has an up-to-date value before proceeding. It is only checked for update table operations.
  final String etag;

  /// The time when this table is considered expired. Only set after the table is deleted.
  final String expireTime;

  /// Options of a Hive table.
  final HiveTableOptionsResponse hiveOptions;

  /// The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  final String name;

  /// The table type.
  final String type;

  /// The last modification time of the table.
  final String updateTime;

  GetTableResult({
    required this.createTime,
    required this.deleteTime,
    required this.etag,
    required this.expireTime,
    required this.hiveOptions,
    required this.name,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['etag'] = etag;
    map['expireTime'] = expireTime;
    map['hiveOptions'] = hiveOptions.toMap();
    map['name'] = name;
    map['type'] = type;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      etag: map['etag'] as String,
      expireTime: map['expireTime'] as String,
      hiveOptions: HiveTableOptionsResponse.fromMap(
          (map['hiveOptions'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
