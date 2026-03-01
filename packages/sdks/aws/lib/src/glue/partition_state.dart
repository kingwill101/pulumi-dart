// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_storage_descriptor.dart';

/// Input properties used for looking up and filtering Partition resources.
class PartitionState {
  /// ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  final pulumi.Input<String>? catalogId;
  /// The time at which the partition was created.
  final pulumi.Input<String>? creationTime;
  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  final pulumi.Input<String>? databaseName;
  /// The last time at which the partition was accessed.
  final pulumi.Input<String>? lastAccessedTime;
  /// The last time at which column statistics were computed for this partition.
  final pulumi.Input<String>? lastAnalyzedTime;
  /// Properties associated with this table, as a list of key-value pairs.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The values that define the partition.
  final pulumi.Input<List<String>>? partitionValues;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A storage descriptor object containing information about the physical storage of this table. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor) for a full explanation of this object.
  final pulumi.Input<PartitionStorageDescriptor>? storageDescriptor;
  final pulumi.Input<String>? tableName;

  /// Creates a new [PartitionState].
  /// [catalogId] ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  /// [creationTime] The time at which the partition was created.
  /// [databaseName] Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  /// [lastAccessedTime] The last time at which the partition was accessed.
  /// [lastAnalyzedTime] The last time at which column statistics were computed for this partition.
  /// [parameters] Properties associated with this table, as a list of key-value pairs.
  /// [partitionValues] The values that define the partition.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageDescriptor] A storage descriptor object containing information about the physical storage of this table. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor) for a full explanation of this object.
  /// [tableName] Optional.
  PartitionState({
    pulumi.Output<String>? catalogId,
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? lastAccessedTime,
    pulumi.Output<String>? lastAnalyzedTime,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<List<String>>? partitionValues,
    pulumi.Output<String>? region,
    pulumi.Output<PartitionStorageDescriptor>? storageDescriptor,
    pulumi.Output<String>? tableName,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      lastAccessedTime = pulumi.Input.asOptionalInput<String>(lastAccessedTime),
      lastAnalyzedTime = pulumi.Input.asOptionalInput<String>(lastAnalyzedTime),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      partitionValues = pulumi.Input.asOptionalInput<List<String>>(partitionValues),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageDescriptor = pulumi.Input.asOptionalInput<PartitionStorageDescriptor>(storageDescriptor),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'creationTime': ?creationTime,
      'databaseName': ?databaseName,
      'lastAccessedTime': ?lastAccessedTime,
      'lastAnalyzedTime': ?lastAnalyzedTime,
      'parameters': ?parameters,
      'partitionValues': ?partitionValues,
      'region': ?region,
      'storageDescriptor': ?pulumi.Input.mapOptionalInputValue<PartitionStorageDescriptor, Map<String, dynamic>>(storageDescriptor, (value) => value.toMap()),
      'tableName': ?tableName,
    };
  }

  factory PartitionState.fromMap(Map<String, dynamic> map) {
    return PartitionState(
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      lastAccessedTime: map['lastAccessedTime'] == null ? null : pulumi.Output.create<String>(map['lastAccessedTime'] as String),
      lastAnalyzedTime: map['lastAnalyzedTime'] == null ? null : pulumi.Output.create<String>(map['lastAnalyzedTime'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      partitionValues: map['partitionValues'] == null ? null : pulumi.Output.create<List<String>>((map['partitionValues'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageDescriptor: map['storageDescriptor'] == null ? null : pulumi.Output.create<PartitionStorageDescriptor>(PartitionStorageDescriptor.fromMap((map['storageDescriptor'] as Map).cast<String, dynamic>())),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

