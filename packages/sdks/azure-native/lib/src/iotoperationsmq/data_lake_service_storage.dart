// ignore_for_file: unused_element, unnecessary_cast

import 'data_lake_service_storage_authentication.dart';

/// DataLake Service Storage details.
class DataLakeServiceStorage {
  /// DataLake service storage authentication details. NOTE - Enum only one method is supported.
  final DataLakeServiceStorageAuthentication authentication;
  /// DataLake service storage endpoint to use.
  final String endpoint;

  /// Creates a new [DataLakeServiceStorage].
  /// [authentication] DataLake service storage authentication details. NOTE - Enum only one method is supported.
  /// [endpoint] DataLake service storage endpoint to use.
  DataLakeServiceStorage({
    required this.authentication,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication.toMap(),
      'endpoint': endpoint,
    };
  }

  factory DataLakeServiceStorage.fromMap(Map<String, dynamic> map) {
    return DataLakeServiceStorage(
      authentication: DataLakeServiceStorageAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] as String,
    );
  }
}

