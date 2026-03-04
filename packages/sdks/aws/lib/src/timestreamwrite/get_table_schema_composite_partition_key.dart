// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableSchemaCompositePartitionKey {
  final pulumi.Input<String> enforcementInRecord;

  /// Name of the Timestream table.
  final pulumi.Input<String> name;

  /// Type of partition key.
  final pulumi.Input<String> type;

  /// Creates a new [GetTableSchemaCompositePartitionKey].
  /// [enforcementInRecord] Required.
  /// [name] Name of the Timestream table.
  /// [type] Type of partition key.
  GetTableSchemaCompositePartitionKey({
    required this.enforcementInRecord,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcementInRecord': enforcementInRecord,
      'name': name,
      'type': type,
    };
  }

  factory GetTableSchemaCompositePartitionKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTableSchemaCompositePartitionKey(
      enforcementInRecord: pulumi.Input.fromValue(
        map['enforcementInRecord'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
