// ignore_for_file: unused_element, unnecessary_cast

class TableSchemaCompositePartitionKey {
  /// The level of enforcement for the specification of a dimension key in ingested records. Valid values: `REQUIRED`, `OPTIONAL`.
  final String? enforcementInRecord;

  /// The name of the attribute used for a dimension key.
  final String? name;

  /// The type of the partition key. Valid values: `DIMENSION`, `MEASURE`.
  final String type;

  /// Creates a new [TableSchemaCompositePartitionKey].
  /// [enforcementInRecord] The level of enforcement for the specification of a dimension key in ingested records. Valid values: `REQUIRED`, `OPTIONAL`.
  /// [name] The name of the attribute used for a dimension key.
  /// [type] The type of the partition key. Valid values: `DIMENSION`, `MEASURE`.
  TableSchemaCompositePartitionKey({
    this.enforcementInRecord,
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcementInRecord': ?enforcementInRecord,
      'name': ?name,
      'type': type,
    };
  }

  factory TableSchemaCompositePartitionKey.fromMap(Map<String, dynamic> map) {
    return TableSchemaCompositePartitionKey(
      enforcementInRecord: map['enforcementInRecord'] == null
          ? null
          : map['enforcementInRecord'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] as String,
    );
  }
}
