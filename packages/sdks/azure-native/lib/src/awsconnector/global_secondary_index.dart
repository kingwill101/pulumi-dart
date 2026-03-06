// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contributor_insights_specification.dart';
import 'key_schema.dart';
import 'projection.dart';
import 'provisioned_throughput.dart';

/// Definition of GlobalSecondaryIndex
class GlobalSecondaryIndex {
  /// The settings used to enable or disable CloudWatch Contributor Insights for the specified global secondary index. The settings used to enable or disable CloudWatch Contributor Insights.
  final pulumi.Input<ContributorInsightsSpecification>? contributorInsightsSpecification;
  /// The name of the global secondary index. The name must be unique among all other indexes on this table.
  final pulumi.Input<String>? indexName;
  /// The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:  +   ``HASH`` - partition key  +   ``RANGE`` - sort key    The partition key of an item is also known as its *hash attribute*. The term 'hash attribute' derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values. The sort key of an item is also known as its *range attribute*. The term 'range attribute' derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  final pulumi.Input<List<KeySchema>>? keySchema;
  /// Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  final pulumi.Input<Projection>? projection;
  /// Represents the provisioned throughput settings for the specified global secondary index. For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the *Amazon DynamoDB Developer Guide*. Throughput for the specified table, which consists of values for ``ReadCapacityUnits`` and ``WriteCapacityUnits``. For more information about the contents of a provisioned throughput structure, see [Table ProvisionedThroughput](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ProvisionedThroughput.html).
  final pulumi.Input<ProvisionedThroughput>? provisionedThroughput;

  /// Creates a new [GlobalSecondaryIndex].
  /// [contributorInsightsSpecification] The settings used to enable or disable CloudWatch Contributor Insights for the specified global secondary index. The settings used to enable or disable CloudWatch Contributor Insights.
  /// [indexName] The name of the global secondary index. The name must be unique among all other indexes on this table.
  /// [keySchema] The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:  +   ``HASH`` - partition key  +   ``RANGE`` - sort key    The partition key of an item is also known as its *hash attribute*. The term 'hash attribute' derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values. The sort key of an item is also known as its *range attribute*. The term 'range attribute' derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  /// [projection] Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  /// [provisionedThroughput] Represents the provisioned throughput settings for the specified global secondary index. For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the *Amazon DynamoDB Developer Guide*. Throughput for the specified table, which consists of values for ``ReadCapacityUnits`` and ``WriteCapacityUnits``. For more information about the contents of a provisioned throughput structure, see [Table ProvisionedThroughput](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ProvisionedThroughput.html).
  const GlobalSecondaryIndex({
    this.contributorInsightsSpecification,
    this.indexName,
    this.keySchema,
    this.projection,
    this.provisionedThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contributorInsightsSpecification': ?pulumi.Input.mapOptionalInputValue<ContributorInsightsSpecification, Map<String, dynamic>>(contributorInsightsSpecification, (value) => value.toMap()),
      'indexName': ?indexName,
      'keySchema': ?pulumi.Input.mapOptionalInputValue<List<KeySchema>, List<Map<String, dynamic>>>(keySchema, (value) => pulumi.Input.encodeList<KeySchema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projection': ?pulumi.Input.mapOptionalInputValue<Projection, Map<String, dynamic>>(projection, (value) => value.toMap()),
      'provisionedThroughput': ?pulumi.Input.mapOptionalInputValue<ProvisionedThroughput, Map<String, dynamic>>(provisionedThroughput, (value) => value.toMap()),
    };
  }

  factory GlobalSecondaryIndex.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndex(
      contributorInsightsSpecification: (() { final guardedValue = map['contributorInsightsSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContributorInsightsSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      indexName: (() { final guardedValue = map['indexName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keySchema: (() { final guardedValue = map['keySchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KeySchema>(guardedValue, (value) => KeySchema.fromMap((value as Map).cast<String, dynamic>()))); })(),
      projection: (() { final guardedValue = map['projection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Projection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisionedThroughput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

