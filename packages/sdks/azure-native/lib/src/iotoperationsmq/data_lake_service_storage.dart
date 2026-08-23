// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_service_storage_authentication.dart';

/// DataLake Service Storage details.
class DataLakeServiceStorage {
  /// DataLake service storage authentication details. NOTE - Enum only one method is supported.
  final pulumi.Input<DataLakeServiceStorageAuthentication> authentication;
  /// DataLake service storage endpoint to use.
  final pulumi.Input<String> endpoint;

  /// Creates a new [DataLakeServiceStorage].
  /// [authentication] DataLake service storage authentication details. NOTE - Enum only one method is supported.
  /// [endpoint] DataLake service storage endpoint to use.
  const DataLakeServiceStorage({
    required this.authentication,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<DataLakeServiceStorageAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpoint': endpoint,
    };
  }

  factory DataLakeServiceStorage.fromMap(Map<String, dynamic> map) {
    return DataLakeServiceStorage(
      authentication: pulumi.Input.fromValue(DataLakeServiceStorageAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}
