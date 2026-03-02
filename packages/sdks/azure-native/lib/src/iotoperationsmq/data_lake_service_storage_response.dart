// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_service_storage_authentication_response.dart';

/// DataLake Service Storage details.
class DataLakeServiceStorageResponse {
  /// DataLake service storage authentication details. NOTE - Enum only one method is supported.
  final pulumi.Input<DataLakeServiceStorageAuthenticationResponse> authentication;
  /// DataLake service storage endpoint to use.
  final pulumi.Input<String> endpoint;

  /// Creates a new [DataLakeServiceStorageResponse].
  /// [authentication] DataLake service storage authentication details. NOTE - Enum only one method is supported.
  /// [endpoint] DataLake service storage endpoint to use.
  DataLakeServiceStorageResponse({
    required this.authentication,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<DataLakeServiceStorageAuthenticationResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpoint': endpoint,
    };
  }

  factory DataLakeServiceStorageResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeServiceStorageResponse(
      authentication: (DataLakeServiceStorageAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      endpoint: (map['endpoint'] as String).input(),
    );
  }
}

