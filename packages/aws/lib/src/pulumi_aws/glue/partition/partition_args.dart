// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../partition_storage_descriptor/partition_storage_descriptor.dart';

/// The set of arguments for Partition.
class PartitionArgs {
  /// ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name.
  final Input<String>? catalogId;

  /// Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.
  final Input<String> databaseName;

  /// Properties associated with this table, as a list of key-value pairs.
  final Input<Map<String, String>>? parameters;

  /// The values that define the partition.
  final Input<List<String>> partitionValues;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A storage descriptor object containing information about the physical storage of this table. You can refer to the [Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-catalog-tables.html#aws-glue-api-catalog-tables-StorageDescriptor) for a full explanation of this object.
  final Input<PartitionStorageDescriptor>? storageDescriptor;
  final Input<String> tableName;

  PartitionArgs({
    this.catalogId,
    required this.databaseName,
    this.parameters,
    required this.partitionValues,
    this.region,
    this.storageDescriptor,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['databaseName'] = databaseName;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    map['partitionValues'] = partitionValues;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final storageDescriptorValue = storageDescriptor;
    if (storageDescriptorValue != null) {
      map['storageDescriptor'] = Input.mapOptionalInputValue<
              PartitionStorageDescriptor, Map<String, dynamic>>(
          storageDescriptorValue, (value) => value.toMap());
    }
    map['tableName'] = tableName;
    return map;
  }

  factory PartitionArgs.fromMap(Map<String, dynamic> map) {
    return PartitionArgs(
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      databaseName: Input.asInput<String>(map['databaseName']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      partitionValues: Input.asInput<List<String>>(map['partitionValues']),
      region: Input.asOptionalInput<String>(map['region']),
      storageDescriptor: Input.asOptionalInput<PartitionStorageDescriptor>(
          map['storageDescriptor']),
      tableName: Input.asInput<String>(map['tableName']),
    );
  }
}
