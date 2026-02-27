import 'package:pulumi/pulumi.dart';
import 'table_item_args.dart';

/// Provides a DynamoDB table item resource
///
/// > **Note:** This resource is not meant to be used for managing large amounts of data in your table, it is not designed to scale.
/// You should perform **regular backups** of all data in the table, see [AWS docs for more](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/BackupRestore.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// You cannot import DynamoDB table items.
class TableItem extends CustomResource {
  /// Hash key to use for lookups and identification of the item
  late final Output<String> hashKey;

  /// JSON representation of a map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.
  late final Output<String> item;

  /// Range key to use for lookups and identification of the item. Required if there is range key defined in the table.
  late final Output<String?> rangeKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name or ARN of the table to contain the item.
  ///
  /// > **Note:** Names included in `item` are represented internally with everything but letters removed. There is the possibility of collisions if two names, once filtered, are the same. For example, the names `your-name-here` and `yournamehere` will overlap and cause an error.
  late final Output<String> tableName;

  TableItem(
    String name, {
    TableItemArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/tableItem:TableItem',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.hashKey = registerOutput<String>('hashKey');
    this.item = registerOutput<String>('item');
    this.rangeKey = registerOutput<String?>('rangeKey');
    this.region = registerOutput<String>('region');
    this.tableName = registerOutput<String>('tableName');
  }
}
