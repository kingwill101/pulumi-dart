// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contributor_insights_specification_response.dart';
import 'key_schema_response.dart';
import 'projection_response.dart';
import 'provisioned_throughput_response.dart';

/// Definition of GlobalSecondaryIndex
class GlobalSecondaryIndexResponse {
  /// The settings used to enable or disable CloudWatch Contributor Insights for the specified global secondary index. The settings used to enable or disable CloudWatch Contributor Insights.
  final ContributorInsightsSpecificationResponse? contributorInsightsSpecification;
  /// The name of the global secondary index. The name must be unique among all other indexes on this table.
  final String? indexName;
  /// The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:  +   ``HASH`` - partition key  +   ``RANGE`` - sort key    The partition key of an item is also known as its *hash attribute*. The term 'hash attribute' derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values. The sort key of an item is also known as its *range attribute*. The term 'range attribute' derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  final List<KeySchemaResponse>? keySchema;
  /// Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  final ProjectionResponse? projection;
  /// Represents the provisioned throughput settings for the specified global secondary index. For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the *Amazon DynamoDB Developer Guide*. Throughput for the specified table, which consists of values for ``ReadCapacityUnits`` and ``WriteCapacityUnits``. For more information about the contents of a provisioned throughput structure, see [Table ProvisionedThroughput](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ProvisionedThroughput.html).
  final ProvisionedThroughputResponse? provisionedThroughput;

  /// Creates a new [GlobalSecondaryIndexResponse].
  /// [contributorInsightsSpecification] The settings used to enable or disable CloudWatch Contributor Insights for the specified global secondary index. The settings used to enable or disable CloudWatch Contributor Insights.
  /// [indexName] The name of the global secondary index. The name must be unique among all other indexes on this table.
  /// [keySchema] The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:  +   ``HASH`` - partition key  +   ``RANGE`` - sort key    The partition key of an item is also known as its *hash attribute*. The term 'hash attribute' derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values. The sort key of an item is also known as its *range attribute*. The term 'range attribute' derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  /// [projection] Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  /// [provisionedThroughput] Represents the provisioned throughput settings for the specified global secondary index. For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the *Amazon DynamoDB Developer Guide*. Throughput for the specified table, which consists of values for ``ReadCapacityUnits`` and ``WriteCapacityUnits``. For more information about the contents of a provisioned throughput structure, see [Table ProvisionedThroughput](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ProvisionedThroughput.html).
  GlobalSecondaryIndexResponse({
    this.contributorInsightsSpecification,
    this.indexName,
    this.keySchema,
    this.projection,
    this.provisionedThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contributorInsightsSpecification': ?contributorInsightsSpecification == null ? null : contributorInsightsSpecification!.toMap(),
      'indexName': ?indexName,
      'keySchema': ?keySchema == null ? null : pulumi.Input.encodeList<KeySchemaResponse, Map<String, dynamic>>(keySchema!, (value) => value.toMap()),
      'projection': ?projection == null ? null : projection!.toMap(),
      'provisionedThroughput': ?provisionedThroughput == null ? null : provisionedThroughput!.toMap(),
    };
  }

  factory GlobalSecondaryIndexResponse.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexResponse(
      contributorInsightsSpecification: map['contributorInsightsSpecification'] == null ? null : ContributorInsightsSpecificationResponse.fromMap((map['contributorInsightsSpecification'] as Map).cast<String, dynamic>()),
      indexName: map['indexName'] == null ? null : map['indexName'] as String,
      keySchema: map['keySchema'] == null ? null : pulumi.Input.decodeList<KeySchemaResponse>(map['keySchema'], (value) => KeySchemaResponse.fromMap((value as Map).cast<String, dynamic>())),
      projection: map['projection'] == null ? null : ProjectionResponse.fromMap((map['projection'] as Map).cast<String, dynamic>()),
      provisionedThroughput: map['provisionedThroughput'] == null ? null : ProvisionedThroughputResponse.fromMap((map['provisionedThroughput'] as Map).cast<String, dynamic>()),
    );
  }
}

