// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_storage_descriptor.dart';

/// {@template pulumi_glue_partition_partition_args_doc}
/// The set of arguments for Partition.
/// {@endtemplate}
/// {@macro pulumi_glue_partition_partition_args_doc}
class PartitionArgs {
  /// ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  final pulumi.Input<String>? catalogId;
  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  final pulumi.Input<String> databaseName;
  /// Properties associated with this table, as a list of key-value pairs.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The values that define the partition.
  final pulumi.Input<List<String>> partitionValues;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A storage descriptor object containing information about the physical storage of this table. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor) for a full explanation of this object.
  final pulumi.Input<PartitionStorageDescriptor>? storageDescriptor;
  final pulumi.Input<String> tableName;

  /// Creates a new [PartitionArgs].
  /// [catalogId] ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  /// [databaseName] Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  /// [parameters] Properties associated with this table, as a list of key-value pairs.
  /// [partitionValues] The values that define the partition.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageDescriptor] A storage descriptor object containing information about the physical storage of this table. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor) for a full explanation of this object.
  /// [tableName] Required.
  PartitionArgs({
    pulumi.Output<String>? catalogId,
    required pulumi.Output<String> databaseName,
    pulumi.Output<Map<String, String>>? parameters,
    required pulumi.Output<List<String>> partitionValues,
    pulumi.Output<String>? region,
    pulumi.Output<PartitionStorageDescriptor>? storageDescriptor,
    required pulumi.Output<String> tableName,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      partitionValues = pulumi.Input.asInput<List<String>>(partitionValues),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageDescriptor = pulumi.Input.asOptionalInput<PartitionStorageDescriptor>(storageDescriptor),
      tableName = pulumi.Input.asInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'databaseName': databaseName,
      'parameters': ?parameters,
      'partitionValues': partitionValues,
      'region': ?region,
      'storageDescriptor': ?pulumi.Input.mapOptionalInputValue<PartitionStorageDescriptor, Map<String, dynamic>>(storageDescriptor, (value) => value.toMap()),
      'tableName': tableName,
    };
  }

  factory PartitionArgs.fromMap(Map<String, dynamic> map) {
    return PartitionArgs(
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      partitionValues: pulumi.Output.create<List<String>>((map['partitionValues'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageDescriptor: map['storageDescriptor'] == null ? null : pulumi.Output.create<PartitionStorageDescriptor>(PartitionStorageDescriptor.fromMap((map['storageDescriptor'] as Map).cast<String, dynamic>())),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

