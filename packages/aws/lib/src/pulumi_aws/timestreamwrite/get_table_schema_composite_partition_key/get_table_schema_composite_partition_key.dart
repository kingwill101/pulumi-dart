// ignore_for_file: unused_element, unnecessary_cast

class GetTableSchemaCompositePartitionKey {
  final String enforcementInRecord;

  /// Name of the Timestream table.
  final String name;

  /// Type of partition key.
  final String type;

  GetTableSchemaCompositePartitionKey({
    required this.enforcementInRecord,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enforcementInRecord'] = enforcementInRecord;
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory GetTableSchemaCompositePartitionKey.fromMap(
      Map<String, dynamic> map) {
    return GetTableSchemaCompositePartitionKey(
      enforcementInRecord: map['enforcementInRecord'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
