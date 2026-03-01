// ignore_for_file: unused_element, unnecessary_cast


/// DataStoreInfo base
class DataStoreInfoBase {
  /// type of datastore; Operational/Vault/Archive
  final String dataStoreType;
  /// Type of Datasource object, used to initialize the right inherited type
  final String objectType;

  /// Creates a new [DataStoreInfoBase].
  /// [dataStoreType] type of datastore; Operational/Vault/Archive
  /// [objectType] Type of Datasource object, used to initialize the right inherited type
  DataStoreInfoBase({
    required this.dataStoreType,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreType': dataStoreType,
      'objectType': objectType,
    };
  }

  factory DataStoreInfoBase.fromMap(Map<String, dynamic> map) {
    return DataStoreInfoBase(
      dataStoreType: map['dataStoreType'] as String,
      objectType: map['objectType'] as String,
    );
  }
}

