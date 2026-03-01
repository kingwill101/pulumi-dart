// ignore_for_file: unused_element, unnecessary_cast

import 'data_lake_service_storage_authentication_response.dart';

/// DataLake Service Storage details.
class DataLakeServiceStorageResponse {
  /// DataLake service storage authentication details. NOTE - Enum only one method is supported.
  final DataLakeServiceStorageAuthenticationResponse authentication;
  /// DataLake service storage endpoint to use.
  final String endpoint;

  /// Creates a new [DataLakeServiceStorageResponse].
  /// [authentication] DataLake service storage authentication details. NOTE - Enum only one method is supported.
  /// [endpoint] DataLake service storage endpoint to use.
  DataLakeServiceStorageResponse({
    required this.authentication,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication.toMap(),
      'endpoint': endpoint,
    };
  }

  factory DataLakeServiceStorageResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeServiceStorageResponse(
      authentication: DataLakeServiceStorageAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] as String,
    );
  }
}

