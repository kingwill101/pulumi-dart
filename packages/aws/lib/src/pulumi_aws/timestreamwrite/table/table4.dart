import 'package:pulumi/pulumi.dart';
import '../table_magnetic_store_write_properties/table_magnetic_store_write_properties.dart';
import '../table_retention_properties/table_retention_properties.dart';
import '../table_schema/table_schema.dart';
import 'table_args4.dart';

/// Provides a Timestream table resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ### Full usage
///
///
///
/// ### Customer-defined Partition Key
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Timestream tables using the `table_name` and `database_name` separate by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:timestreamwrite/table:Table example ExampleTable:ExampleDatabase
/// ```
class Table4 extends CustomResource {
  /// The ARN that uniquely identifies this table.
  late final Output<String> arn;

  /// The name of the Timestream database.
  late final Output<String> databaseName;

  /// Contains properties to set on the table when enabling magnetic store writes. See Magnetic Store Write Properties below for more details.
  late final Output<TableMagneticStoreWriteProperties>
      magneticStoreWriteProperties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, `magnetic_store_retention_period_in_days` default to 73000 and `memory_store_retention_period_in_hours` defaults to 6.
  late final Output<TableRetentionProperties> retentionProperties;

  /// The schema of the table. See Schema below for more details.
  late final Output<TableSchema> schema;

  /// The name of the Timestream table.
  late final Output<String> tableName;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Table4(
    String name, {
    TableArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:timestreamwrite/table:Table',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.databaseName = registerOutput<String>('databaseName');
    this.magneticStoreWriteProperties =
        registerOutput<TableMagneticStoreWriteProperties>(
            'magneticStoreWriteProperties');
    this.region = registerOutput<String>('region');
    this.retentionProperties =
        registerOutput<TableRetentionProperties>('retentionProperties');
    this.schema = registerOutput<TableSchema>('schema');
    this.tableName = registerOutput<String>('tableName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
