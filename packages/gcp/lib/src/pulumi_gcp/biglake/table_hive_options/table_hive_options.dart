// ignore_for_file: unused_element, unnecessary_cast

import '../table_hive_options_storage_descriptor/table_hive_options_storage_descriptor.dart';

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

  TableHiveOptions({
    this.parameters,
    this.storageDescriptor,
    this.tableType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final storageDescriptorValue = storageDescriptor;
    if (storageDescriptorValue != null) {
      map['storageDescriptor'] = storageDescriptorValue.toMap();
    }
    final tableTypeValue = tableType;
    if (tableTypeValue != null) {
      map['tableType'] = tableTypeValue;
    }
    return map;
  }

  factory TableHiveOptions.fromMap(Map<String, dynamic> map) {
    return TableHiveOptions(
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      storageDescriptor: map['storageDescriptor'] == null
          ? null
          : TableHiveOptionsStorageDescriptor.fromMap(
              (map['storageDescriptor'] as Map).cast<String, dynamic>()),
      tableType: map['tableType'] == null ? null : map['tableType'] as String,
    );
  }
}
