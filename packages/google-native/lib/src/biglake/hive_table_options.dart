// ignore_for_file: unused_element, unnecessary_cast

import 'storage_descriptor.dart';

/// Options of a Hive table.
class HiveTableOptions {
  /// Stores user supplied Hive table parameters.
  final Map<String, String>? parameters;
  /// Stores physical storage information of the data.
  final StorageDescriptor? storageDescriptor;
  /// Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
  final String? tableType;

  /// Creates a new [HiveTableOptions].
  /// [parameters] Stores user supplied Hive table parameters.
  /// [storageDescriptor] Stores physical storage information of the data.
  /// [tableType] Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
  HiveTableOptions({
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

  factory HiveTableOptions.fromMap(Map<String, dynamic> map) {
    return HiveTableOptions(
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      storageDescriptor: map['storageDescriptor'] == null ? null : StorageDescriptor.fromMap((map['storageDescriptor'] as Map).cast<String, dynamic>()),
      tableType: map['tableType'] == null ? null : map['tableType'] as String,
    );
  }
}

