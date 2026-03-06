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
  const DataStoreInfoBaseResponse({
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
      dataStoreType: pulumi.Input.fromValue(map['dataStoreType'] as String),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}

