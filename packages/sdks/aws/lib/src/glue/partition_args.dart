// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_storage_descriptor.dart';

/// {@template pulumi_glue_partition_partition_args_doc}
/// The set of arguments for Partition.
/// {@endtemplate}
/// {@macro pulumi_glue_partition_partition_args_doc}
class PartitionArgs {
  /// ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  final pulumi.Input<String?>? catalogId;
  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  final pulumi.Input<String> databaseName;
  /// Properties associated with this table, as a list of key-value pairs.
  final pulumi.Input<Map<String, String>?>? parameters;
  /// The values that define the partition.
  final pulumi.Input<List<String>> partitionValues;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A storage descriptor object containing information about the physical storage of this table. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor) for a full explanation of this object.
  final pulumi.Input<PartitionStorageDescriptor?>? storageDescriptor;
  final pulumi.Input<String> tableName;

  /// Creates a new [PartitionArgs].
  /// [catalogId] ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  /// [databaseName] Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  /// [parameters] Properties associated with this table, as a list of key-value pairs.
  /// [partitionValues] The values that define the partition.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageDescriptor] A storage descriptor object containing information about the physical storage of this table. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor) for a full explanation of this object.
  /// [tableName] Required.
  const PartitionArgs({
    this.catalogId,
    required this.databaseName,
    this.parameters,
    required this.partitionValues,
    this.region,
    this.storageDescriptor,
    required this.tableName,
  });

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
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      partitionValues: pulumi.Input.fromValue((map['partitionValues'] as List).cast<String>()),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageDescriptor: (() { final guardedValue = map['storageDescriptor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PartitionStorageDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
