// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute_definition_response.dart';
import 'contributor_insights_specification_response.dart';
import 'global_secondary_index_response.dart';
import 'import_source_specification_response.dart';
import 'key_schema_response.dart';
import 'kinesis_stream_specification_response.dart';
import 'local_secondary_index_response.dart';
import 'point_in_time_recovery_specification_response.dart';
import 'provisioned_throughput_response.dart';
import 'resource_policy_response.dart';
import 'ssespecification_response.dart';
import 'stream_specification_response.dart';
import 'tag_response.dart';
import 'time_to_live_specification_response.dart';

/// Definition of awsDynamoDBTable
class AwsDynamoDBTablePropertiesResponse {
  /// Property arn
  final String? arn;
  /// A list of attributes that describe the key schema for the table and indexes. This property is required to create a DDB table. Update requires: [Some interruptions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-some-interrupt). Replacement if you edit an existing AttributeDefinition.
  final List<AttributeDefinitionResponse>? attributeDefinitions;
  /// Specify how you are charged for read and write throughput and how you manage capacity. Valid values include:  +   ``PROVISIONED`` - We recommend using ``PROVISIONED`` for predictable workloads. ``PROVISIONED`` sets the billing mode to [Provisioned Mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual).  +   ``PAY_PER_REQUEST`` - We recommend using ``PAY_PER_REQUEST`` for unpredictable workloads. ``PAY_PER_REQUEST`` sets the billing mode to [On-Demand Mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand).   If not specified, the default is ``PROVISIONED``.
  final String? billingMode;
  /// The settings used to enable or disable CloudWatch Contributor Insights for the specified table. The settings used to enable or disable CloudWatch Contributor Insights.
  final ContributorInsightsSpecificationResponse? contributorInsightsSpecification;
  /// Determines if a table is protected from deletion. When enabled, the table cannot be deleted by any user or process. This setting is disabled by default. For more information, see [Using deletion protection](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.Basics.html#WorkingWithTables.Basics.DeletionProtection) in the *Developer Guide*.
  final bool? deletionProtectionEnabled;
  /// Global secondary indexes to be created on the table. You can create up to 20 global secondary indexes.  If you update a table to include a new global secondary index, CFNlong initiates the index creation and then proceeds with the stack update. CFNlong doesn't wait for the index to complete creation because the backfilling phase can take a long time, depending on the size of the table. You can't use the index or update the table until the index's status is ``ACTIVE``. You can track its status by using the DynamoDB [DescribeTable](https://docs.aws.amazon.com/cli/latest/reference/dynamodb/describe-table.html) command. If you add or delete an index during an update, we recommend that you don't update any other resources. If your stack fails to update and is rolled back while adding a new index, you must manually delete the index.  Updates are not supported. The following are exceptions:  +  If you update either the contributor insights specification or the provisioned throughput values of global secondary indexes, you can update the table without interruption.  +  You can delete or add one global secondary index without interruption. If you do both in the same update (for example, by changing the index's logical ID), the update fails.
  final List<GlobalSecondaryIndexResponse>? globalSecondaryIndexes;
  /// Specifies the properties of data being imported from the S3 bucket source to the table.  If you specify the ``ImportSourceSpecification`` property, and also specify either the ``StreamSpecification``, the ``TableClass`` property, or the ``DeletionProtectionEnabled`` property, the IAM entity creating/updating stack must have ``UpdateTable`` permission. Specifies the properties of data being imported from the S3 bucket source to the table.
  final ImportSourceSpecificationResponse? importSourceSpecification;
  /// Specifies the attributes that make up the primary key for the table. The attributes in the ``KeySchema`` property must also be defined in the ``AttributeDefinitions`` property.
  final List<KeySchemaResponse>? keySchema;
  /// The Kinesis Data Streams configuration for the specified table. The Kinesis Data Streams configuration for the specified table.
  final KinesisStreamSpecificationResponse? kinesisStreamSpecification;
  /// Local secondary indexes to be created on the table. You can create up to 5 local secondary indexes. Each index is scoped to a given hash key value. The size of each hash key can be up to 10 gigabytes.
  final List<LocalSecondaryIndexResponse>? localSecondaryIndexes;
  /// The settings used to enable point in time recovery. The settings used to enable point in time recovery.
  final PointInTimeRecoverySpecificationResponse? pointInTimeRecoverySpecification;
  /// Throughput for the specified table, which consists of values for ``ReadCapacityUnits`` and ``WriteCapacityUnits``. For more information about the contents of a provisioned throughput structure, see [Amazon DynamoDB Table ProvisionedThroughput](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ProvisionedThroughput.html).  If you set ``BillingMode`` as ``PROVISIONED``, you must specify this property. If you set ``BillingMode`` as ``PAY_PER_REQUEST``, you cannot specify this property. Throughput for the specified table, which consists of values for ``ReadCapacityUnits`` and ``WriteCapacityUnits``. For more information about the contents of a provisioned throughput structure, see [Table ProvisionedThroughput](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ProvisionedThroughput.html).
  final ProvisionedThroughputResponse? provisionedThroughput;
  /// A resource-based policy document that contains permissions to add to the specified table. In a CFNshort template, you can provide the policy in JSON or YAML format because CFNshort converts YAML to JSON before submitting it to DDB. For more information about resource-based policies, see [Using resource-based policies for](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/access-control-resource-based.html) and [Resource-based policy examples](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-examples.html). When you attach a resource-based policy while creating a table, the policy creation is *strongly consistent*. For information about the considerations that you should keep in mind while attaching a resource-based policy, see [Resource-based policy considerations](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-considerations.html). Creates or updates a resource-based policy document that contains the permissions for DDB resources, such as a table, its indexes, and stream. Resource-based policies let you define access permissions by specifying who has access to each resource, and the actions they are allowed to perform on each resource. In a CFNshort template, you can provide the policy in JSON or YAML format because CFNshort converts YAML to JSON before submitting it to DDB. For more information about resource-based policies, see [Using resource-based policies for](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/access-control-resource-based.html) and [Resource-based policy examples](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-examples.html). While defining resource-based policies in your CFNshort templates, the following considerations apply:  +  The maximum size supported for a resource-based policy document in JSON format is 20 KB. DDB counts whitespaces when calculating the size of a policy against this limit.   +  Resource-based policies don't support [drift detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html#). If you update a policy outside of the CFNshort stack template, you'll need to update the CFNshort stack with the changes.  +  Resource-based policies don't support out-of-band changes. If you add, update, or delete a policy outside of the CFNshort template, the change won't be overwritten if there are no changes to the policy within the template. For example, say that your template contains a resource-based policy, which you later update outside of the template. If you don't make any changes to the policy in the template, the updated policy in DDB won’t be synced with the policy in the template. Conversely, say that your template doesn’t contain a resource-based policy, but you add a policy outside of the template. This policy won’t be removed from DDB as long as you don’t add it to the template. When you add a policy to the template and update the stack, the existing policy in DDB will be updated to match the one defined in the template.   For a full list of all considerations, see [Resource-based policy considerations](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-considerations.html).
  final ResourcePolicyResponse? resourcePolicy;
  /// Specifies the settings to enable server-side encryption. Represents the settings used to enable server-side encryption.
  final SSESpecificationResponse? sseSpecification;
  /// Property streamArn
  final String? streamArn;
  /// The settings for the DDB table stream, which capture changes to items stored in the table. Represents the DynamoDB Streams configuration for a table in DynamoDB.
  final StreamSpecificationResponse? streamSpecification;
  /// The table class of the new table. Valid values are ``STANDARD`` and ``STANDARD_INFREQUENT_ACCESS``.
  final String? tableClass;
  /// A name for the table. If you don't specify a name, CFNlong generates a unique physical ID and uses that ID for the table name. For more information, see [Name Type](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html).  If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
  final String? tableName;
  /// An array of key-value pairs to apply to this resource. For more information, see [Tag](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html).
  final List<TagResponse>? tags;
  /// Specifies the Time to Live (TTL) settings for the table.  For detailed information about the limits in DynamoDB, see [Limits in Amazon DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the Amazon DynamoDB Developer Guide. Represents the settings used to enable or disable Time to Live (TTL) for the specified table.
  final TimeToLiveSpecificationResponse? timeToLiveSpecification;

  /// Creates a new [AwsDynamoDBTablePropertiesResponse].
  /// [arn] Property arn
  /// [attributeDefinitions] A list of attributes that describe the key schema for the table and indexes. This property is required to create a DDB table. Update requires: [Some interruptions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-some-interrupt). Replacement if you edit an existing AttributeDefinition.
  /// [billingMode] Specify how you are charged for read and write throughput and how you manage capacity. Valid values include:  +   ``PROVISIONED`` - We recommend using ``PROVISIONED`` for predictable workloads. ``PROVISIONED`` sets the billing mode to [Provisioned Mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual).  +   ``PAY_PER_REQUEST`` - We recommend using ``PAY_PER_REQUEST`` for unpredictable workloads. ``PAY_PER_REQUEST`` sets the billing mode to [On-Demand Mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand).   If not specified, the default is ``PROVISIONED``.
  /// [contributorInsightsSpecification] The settings used to enable or disable CloudWatch Contributor Insights for the specified table. The settings used to enable or disable CloudWatch Contributor Insights.
  /// [deletionProtectionEnabled] Determines if a table is protected from deletion. When enabled, the table cannot be deleted by any user or process. This setting is disabled by default. For more information, see [Using deletion protection](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.Basics.html#WorkingWithTables.Basics.DeletionProtection) in the *Developer Guide*.
  /// [globalSecondaryIndexes] Global secondary indexes to be created on the table. You can create up to 20 global secondary indexes.  If you update a table to include a new global secondary index, CFNlong initiates the index creation and then proceeds with the stack update. CFNlong doesn't wait for the index to complete creation because the backfilling phase can take a long time, depending on the size of the table. You can't use the index or update the table until the index's status is ``ACTIVE``. You can track its status by using the DynamoDB [DescribeTable](https://docs.aws.amazon.com/cli/latest/reference/dynamodb/describe-table.html) command. If you add or delete an index during an update, we recommend that you don't update any other resources. If your stack fails to update and is rolled back while adding a new index, you must manually delete the index.  Updates are not supported. The following are exceptions:  +  If you update either the contributor insights specification or the provisioned throughput values of global secondary indexes, you can update the table without interruption.  +  You can delete or add one global secondary index without interruption. If you do both in the same update (for example, by changing the index's logical ID), the update fails.
  /// [importSourceSpecification] Specifies the properties of data being imported from the S3 bucket source to the table.  If you specify the ``ImportSourceSpecification`` property, and also specify either the ``StreamSpecification``, the ``TableClass`` property, or the ``DeletionProtectionEnabled`` property, the IAM entity creating/updating stack must have ``UpdateTable`` permission. Specifies the properties of data being imported from the S3 bucket source to the table.
  /// [keySchema] Specifies the attributes that make up the primary key for the table. The attributes in the ``KeySchema`` property must also be defined in the ``AttributeDefinitions`` property.
  /// [kinesisStreamSpecification] The Kinesis Data Streams configuration for the specified table. The Kinesis Data Streams configuration for the specified table.
  /// [localSecondaryIndexes] Local secondary indexes to be created on the table. You can create up to 5 local secondary indexes. Each index is scoped to a given hash key value. The size of each hash key can be up to 10 gigabytes.
  /// [pointInTimeRecoverySpecification] The settings used to enable point in time recovery. The settings used to enable point in time recovery.
  /// [provisionedThroughput] Throughput for the specified table, which consists of values for ``ReadCapacityUnits`` and ``WriteCapacityUnits``. For more information about the contents of a provisioned throughput structure, see [Amazon DynamoDB Table ProvisionedThroughput](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ProvisionedThroughput.html).  If you set ``BillingMode`` as ``PROVISIONED``, you must specify this property. If you set ``BillingMode`` as ``PAY_PER_REQUEST``, you cannot specify this property. Throughput for the specified table, which consists of values for ``ReadCapacityUnits`` and ``WriteCapacityUnits``. For more information about the contents of a provisioned throughput structure, see [Table ProvisionedThroughput](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ProvisionedThroughput.html).
  /// [resourcePolicy] A resource-based policy document that contains permissions to add to the specified table. In a CFNshort template, you can provide the policy in JSON or YAML format because CFNshort converts YAML to JSON before submitting it to DDB. For more information about resource-based policies, see [Using resource-based policies for](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/access-control-resource-based.html) and [Resource-based policy examples](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-examples.html). When you attach a resource-based policy while creating a table, the policy creation is *strongly consistent*. For information about the considerations that you should keep in mind while attaching a resource-based policy, see [Resource-based policy considerations](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-considerations.html). Creates or updates a resource-based policy document that contains the permissions for DDB resources, such as a table, its indexes, and stream. Resource-based policies let you define access permissions by specifying who has access to each resource, and the actions they are allowed to perform on each resource. In a CFNshort template, you can provide the policy in JSON or YAML format because CFNshort converts YAML to JSON before submitting it to DDB. For more information about resource-based policies, see [Using resource-based policies for](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/access-control-resource-based.html) and [Resource-based policy examples](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-examples.html). While defining resource-based policies in your CFNshort templates, the following considerations apply:  +  The maximum size supported for a resource-based policy document in JSON format is 20 KB. DDB counts whitespaces when calculating the size of a policy against this limit.   +  Resource-based policies don't support [drift detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html#). If you update a policy outside of the CFNshort stack template, you'll need to update the CFNshort stack with the changes.  +  Resource-based policies don't support out-of-band changes. If you add, update, or delete a policy outside of the CFNshort template, the change won't be overwritten if there are no changes to the policy within the template. For example, say that your template contains a resource-based policy, which you later update outside of the template. If you don't make any changes to the policy in the template, the updated policy in DDB won’t be synced with the policy in the template. Conversely, say that your template doesn’t contain a resource-based policy, but you add a policy outside of the template. This policy won’t be removed from DDB as long as you don’t add it to the template. When you add a policy to the template and update the stack, the existing policy in DDB will be updated to match the one defined in the template.   For a full list of all considerations, see [Resource-based policy considerations](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-considerations.html).
  /// [sseSpecification] Specifies the settings to enable server-side encryption. Represents the settings used to enable server-side encryption.
  /// [streamArn] Property streamArn
  /// [streamSpecification] The settings for the DDB table stream, which capture changes to items stored in the table. Represents the DynamoDB Streams configuration for a table in DynamoDB.
  /// [tableClass] The table class of the new table. Valid values are ``STANDARD`` and ``STANDARD_INFREQUENT_ACCESS``.
  /// [tableName] A name for the table. If you don't specify a name, CFNlong generates a unique physical ID and uses that ID for the table name. For more information, see [Name Type](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html).  If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
  /// [tags] An array of key-value pairs to apply to this resource. For more information, see [Tag](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html).
  /// [timeToLiveSpecification] Specifies the Time to Live (TTL) settings for the table.  For detailed information about the limits in DynamoDB, see [Limits in Amazon DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the Amazon DynamoDB Developer Guide. Represents the settings used to enable or disable Time to Live (TTL) for the specified table.
  AwsDynamoDBTablePropertiesResponse({
    this.arn,
    this.attributeDefinitions,
    this.billingMode,
    this.contributorInsightsSpecification,
    this.deletionProtectionEnabled,
    this.globalSecondaryIndexes,
    this.importSourceSpecification,
    this.keySchema,
    this.kinesisStreamSpecification,
    this.localSecondaryIndexes,
    this.pointInTimeRecoverySpecification,
    this.provisionedThroughput,
    this.resourcePolicy,
    this.sseSpecification,
    this.streamArn,
    this.streamSpecification,
    this.tableClass,
    this.tableName,
    this.tags,
    this.timeToLiveSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attributeDefinitions': ?attributeDefinitions == null ? null : pulumi.Input.encodeList<AttributeDefinitionResponse, Map<String, dynamic>>(attributeDefinitions!, (value) => value.toMap()),
      'billingMode': ?billingMode,
      'contributorInsightsSpecification': ?contributorInsightsSpecification == null ? null : contributorInsightsSpecification!.toMap(),
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'globalSecondaryIndexes': ?globalSecondaryIndexes == null ? null : pulumi.Input.encodeList<GlobalSecondaryIndexResponse, Map<String, dynamic>>(globalSecondaryIndexes!, (value) => value.toMap()),
      'importSourceSpecification': ?importSourceSpecification == null ? null : importSourceSpecification!.toMap(),
      'keySchema': ?keySchema == null ? null : pulumi.Input.encodeList<KeySchemaResponse, Map<String, dynamic>>(keySchema!, (value) => value.toMap()),
      'kinesisStreamSpecification': ?kinesisStreamSpecification == null ? null : kinesisStreamSpecification!.toMap(),
      'localSecondaryIndexes': ?localSecondaryIndexes == null ? null : pulumi.Input.encodeList<LocalSecondaryIndexResponse, Map<String, dynamic>>(localSecondaryIndexes!, (value) => value.toMap()),
      'pointInTimeRecoverySpecification': ?pointInTimeRecoverySpecification == null ? null : pointInTimeRecoverySpecification!.toMap(),
      'provisionedThroughput': ?provisionedThroughput == null ? null : provisionedThroughput!.toMap(),
      'resourcePolicy': ?resourcePolicy == null ? null : resourcePolicy!.toMap(),
      'sseSpecification': ?sseSpecification == null ? null : sseSpecification!.toMap(),
      'streamArn': ?streamArn,
      'streamSpecification': ?streamSpecification == null ? null : streamSpecification!.toMap(),
      'tableClass': ?tableClass,
      'tableName': ?tableName,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'timeToLiveSpecification': ?timeToLiveSpecification == null ? null : timeToLiveSpecification!.toMap(),
    };
  }

  factory AwsDynamoDBTablePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsDynamoDBTablePropertiesResponse(
      arn: map['arn'] == null ? null : map['arn'] as String,
      attributeDefinitions: map['attributeDefinitions'] == null ? null : pulumi.Input.decodeList<AttributeDefinitionResponse>(map['attributeDefinitions'], (value) => AttributeDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      billingMode: map['billingMode'] == null ? null : map['billingMode'] as String,
      contributorInsightsSpecification: map['contributorInsightsSpecification'] == null ? null : ContributorInsightsSpecificationResponse.fromMap((map['contributorInsightsSpecification'] as Map).cast<String, dynamic>()),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : map['deletionProtectionEnabled'] as bool,
      globalSecondaryIndexes: map['globalSecondaryIndexes'] == null ? null : pulumi.Input.decodeList<GlobalSecondaryIndexResponse>(map['globalSecondaryIndexes'], (value) => GlobalSecondaryIndexResponse.fromMap((value as Map).cast<String, dynamic>())),
      importSourceSpecification: map['importSourceSpecification'] == null ? null : ImportSourceSpecificationResponse.fromMap((map['importSourceSpecification'] as Map).cast<String, dynamic>()),
      keySchema: map['keySchema'] == null ? null : pulumi.Input.decodeList<KeySchemaResponse>(map['keySchema'], (value) => KeySchemaResponse.fromMap((value as Map).cast<String, dynamic>())),
      kinesisStreamSpecification: map['kinesisStreamSpecification'] == null ? null : KinesisStreamSpecificationResponse.fromMap((map['kinesisStreamSpecification'] as Map).cast<String, dynamic>()),
      localSecondaryIndexes: map['localSecondaryIndexes'] == null ? null : pulumi.Input.decodeList<LocalSecondaryIndexResponse>(map['localSecondaryIndexes'], (value) => LocalSecondaryIndexResponse.fromMap((value as Map).cast<String, dynamic>())),
      pointInTimeRecoverySpecification: map['pointInTimeRecoverySpecification'] == null ? null : PointInTimeRecoverySpecificationResponse.fromMap((map['pointInTimeRecoverySpecification'] as Map).cast<String, dynamic>()),
      provisionedThroughput: map['provisionedThroughput'] == null ? null : ProvisionedThroughputResponse.fromMap((map['provisionedThroughput'] as Map).cast<String, dynamic>()),
      resourcePolicy: map['resourcePolicy'] == null ? null : ResourcePolicyResponse.fromMap((map['resourcePolicy'] as Map).cast<String, dynamic>()),
      sseSpecification: map['sseSpecification'] == null ? null : SSESpecificationResponse.fromMap((map['sseSpecification'] as Map).cast<String, dynamic>()),
      streamArn: map['streamArn'] == null ? null : map['streamArn'] as String,
      streamSpecification: map['streamSpecification'] == null ? null : StreamSpecificationResponse.fromMap((map['streamSpecification'] as Map).cast<String, dynamic>()),
      tableClass: map['tableClass'] == null ? null : map['tableClass'] as String,
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      timeToLiveSpecification: map['timeToLiveSpecification'] == null ? null : TimeToLiveSpecificationResponse.fromMap((map['timeToLiveSpecification'] as Map).cast<String, dynamic>()),
    );
  }
}

