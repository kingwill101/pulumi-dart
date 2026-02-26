// ignore_for_file: unused_element, unnecessary_cast

import 'storage_descriptor_response.dart';

/// Options of a Hive table.
class HiveTableOptionsResponse {
  /// Stores user supplied Hive table parameters.
  final Map<String, String> parameters;

  /// Stores physical storage information of the data.
  final StorageDescriptorResponse storageDescriptor;

  /// Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
  final String tableType;

  HiveTableOptionsResponse({
    required this.parameters,
    required this.storageDescriptor,
    required this.tableType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameters'] = parameters;
    map['storageDescriptor'] = storageDescriptor.toMap();
    map['tableType'] = tableType;
    return map;
  }

  factory HiveTableOptionsResponse.fromMap(Map<String, dynamic> map) {
    return HiveTableOptionsResponse(
      parameters: (map['parameters'] as Map).cast<String, String>(),
      storageDescriptor: StorageDescriptorResponse.fromMap(
          (map['storageDescriptor'] as Map).cast<String, dynamic>()),
      tableType: map['tableType'] as String,
    );
  }
}
