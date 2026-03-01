// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_table_get_table_args_doc}
/// Arguments for getTable.
/// {@endtemplate}
/// {@macro pulumi_storage_get_table_get_table_args_doc}
class GetTableArgs {
  /// The name of the Table.
  final pulumi.Input<String> name;
  /// The name of the Storage Account where the Table exists.
  final pulumi.Input<String> storageAccountName;

  /// Creates a new [GetTableArgs].
  /// [name] The name of the Table.
  /// [storageAccountName] The name of the Storage Account where the Table exists.
  GetTableArgs({
    required String name,
    required String storageAccountName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'storageAccountName': storageAccountName,
    };
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      name: map['name'] as String,
      storageAccountName: map['storageAccountName'] as String,
    );
  }
}

