// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_schema_partition_field_type.dart';

/// Represents a key field within the entity's partition structure. You could have up to 20 partition fields, but only the first 10 partitions have the filtering ability due to performance consideration. Note: Partition fields are immutable.
class GoogleCloudDataplexV1SchemaPartitionField {
  /// Partition field name must consist of letters, numbers, and underscores only, with a maximum of length of 256 characters, and must begin with a letter or underscore..
  final String name;

  /// Immutable. The type of field.
  final GoogleCloudDataplexV1SchemaPartitionFieldType type;

  GoogleCloudDataplexV1SchemaPartitionField({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['type'] = type.value;
    return map;
  }

  factory GoogleCloudDataplexV1SchemaPartitionField.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1SchemaPartitionField(
      name: map['name'] as String,
      type: GoogleCloudDataplexV1SchemaPartitionFieldType.fromValue(
          map['type'] as String),
    );
  }
}
