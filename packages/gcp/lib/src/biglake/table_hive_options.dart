// ignore_for_file: unused_element, unnecessary_cast

import 'table_hive_options_storage_descriptor.dart';

class TableHiveOptions {
  /// Stores user supplied Hive table parameters. An object containing a
  /// list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? parameters;
  /// Stores physical storage information on the data.
  /// Structure is documented below.
  final TableHiveOptionsStorageDescriptor? storageDescriptor;
  /// Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
  final String? tableType;

  /// Creates a new [TableHiveOptions].
  /// [parameters] Stores user supplied Hive table parameters. An object containing a
  /// [storageDescriptor] Stores physical storage information on the data.
  /// [tableType] Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
  TableHiveOptions({
    this.parameters,
    this.storageDescriptor,
    this.tableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'storageDescriptor': ?storageDescriptor == null ? null : storageDescriptor!.toMap(),
      'tableType': ?tableType,
    };
  }

  factory TableHiveOptions.fromMap(Map<String, dynamic> map) {
    return TableHiveOptions(
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      storageDescriptor: map['storageDescriptor'] == null ? null : TableHiveOptionsStorageDescriptor.fromMap((map['storageDescriptor'] as Map).cast<String, dynamic>()),
      tableType: map['tableType'] == null ? null : map['tableType'] as String,
    );
  }
}

