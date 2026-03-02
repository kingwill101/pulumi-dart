// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataStoreInfo base
class DataStoreInfoBaseResponse {
  /// type of datastore; Operational/Vault/Archive
  final pulumi.Input<String> dataStoreType;
  /// Type of Datasource object, used to initialize the right inherited type
  final pulumi.Input<String> objectType;

  /// Creates a new [DataStoreInfoBaseResponse].
  /// [dataStoreType] type of datastore; Operational/Vault/Archive
  /// [objectType] Type of Datasource object, used to initialize the right inherited type
  DataStoreInfoBaseResponse({
    required this.dataStoreType,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreType': dataStoreType,
      'objectType': objectType,
    };
  }

  factory DataStoreInfoBaseResponse.fromMap(Map<String, dynamic> map) {
    return DataStoreInfoBaseResponse(
      dataStoreType: (map['dataStoreType'] as String).input(),
      objectType: (map['objectType'] as String).input(),
    );
  }
}

