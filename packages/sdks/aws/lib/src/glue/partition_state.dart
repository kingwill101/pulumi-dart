// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_storage_descriptor.dart';

/// Input properties used for looking up and filtering Partition resources.
class PartitionState {
  /// ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  final pulumi.Input<String?>? catalogId;
  /// The time at which the partition was created.
  final pulumi.Input<String?>? creationTime;
  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  final pulumi.Input<String?>? databaseName;
  /// The last time at which the partition was accessed.
  final pulumi.Input<String?>? lastAccessedTime;
  /// The last time at which column statistics were computed for this partition.
  final pulumi.Input<String?>? lastAnalyzedTime;
  /// Properties associated with this table, as a list of key-value pairs.
  final pulumi.Input<Map<String, String>?>? parameters;
  /// The values that define the partition.
  final pulumi.Input<List<String>?>? partitionValues;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A storage descriptor object containing information about the physical storage of this table. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor) for a full explanation of this object.
  final pulumi.Input<PartitionStorageDescriptor?>? storageDescriptor;
  final pulumi.Input<String?>? tableName;

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
  const PartitionState({
    this.catalogId,
    this.creationTime,
    this.databaseName,
    this.lastAccessedTime,
    this.lastAnalyzedTime,
    this.parameters,
    this.partitionValues,
    this.region,
    this.storageDescriptor,
    this.tableName,
  });

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
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastAccessedTime: (() { final guardedValue = map['lastAccessedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastAnalyzedTime: (() { final guardedValue = map['lastAnalyzedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      partitionValues: (() { final guardedValue = map['partitionValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageDescriptor: (() { final guardedValue = map['storageDescriptor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PartitionStorageDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
