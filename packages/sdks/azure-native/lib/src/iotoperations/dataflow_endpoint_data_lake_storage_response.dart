// ignore_for_file: unused_element, unnecessary_cast

import 'batching_configuration_response.dart';
import 'dataflow_endpoint_data_lake_storage_authentication_response.dart';

/// Azure Data Lake endpoint properties
class DataflowEndpointDataLakeStorageResponse {
  /// Authentication configuration. NOTE - only authentication property is allowed per entry.
  final DataflowEndpointDataLakeStorageAuthenticationResponse authentication;
  /// Azure Data Lake endpoint batching configuration.
  final BatchingConfigurationResponse? batching;
  /// Host of the Azure Data Lake in the form of <account>.blob.core.windows.net .
  final String host;

  /// Creates a new [DataflowEndpointDataLakeStorageResponse].
  /// [authentication] Authentication configuration. NOTE - only authentication property is allowed per entry.
  /// [batching] Azure Data Lake endpoint batching configuration.
  /// [host] Host of the Azure Data Lake in the form of <account>.blob.core.windows.net .
  DataflowEndpointDataLakeStorageResponse({
    required this.authentication,
    this.batching,
    required this.host,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication.toMap(),
      'batching': ?batching == null ? null : batching!.toMap(),
      'host': host,
    };
  }

  factory DataflowEndpointDataLakeStorageResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointDataLakeStorageResponse(
      authentication: DataflowEndpointDataLakeStorageAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      batching: map['batching'] == null ? null : BatchingConfigurationResponse.fromMap((map['batching'] as Map).cast<String, dynamic>()),
      host: map['host'] as String,
    );
  }
}

