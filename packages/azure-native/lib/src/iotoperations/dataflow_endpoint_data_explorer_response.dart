// ignore_for_file: unused_element, unnecessary_cast

import 'batching_configuration_response.dart';
import 'dataflow_endpoint_data_explorer_authentication_response.dart';

/// Azure Data Explorer endpoint properties
class DataflowEndpointDataExplorerResponse {
  /// Authentication configuration. NOTE - only authentication property is allowed per entry.
  final DataflowEndpointDataExplorerAuthenticationResponse authentication;
  /// Azure Data Explorer endpoint batching configuration.
  final BatchingConfigurationResponse? batching;
  /// Database name.
  final String database;
  /// Host of the Azure Data Explorer in the form of <cluster>.<region>.kusto.windows.net .
  final String host;

  /// Creates a new [DataflowEndpointDataExplorerResponse].
  /// [authentication] Authentication configuration. NOTE - only authentication property is allowed per entry.
  /// [batching] Azure Data Explorer endpoint batching configuration.
  /// [database] Database name.
  /// [host] Host of the Azure Data Explorer in the form of <cluster>.<region>.kusto.windows.net .
  DataflowEndpointDataExplorerResponse({
    required this.authentication,
    this.batching,
    required this.database,
    required this.host,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication.toMap(),
      'batching': ?batching == null ? null : batching!.toMap(),
      'database': database,
      'host': host,
    };
  }

  factory DataflowEndpointDataExplorerResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointDataExplorerResponse(
      authentication: DataflowEndpointDataExplorerAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      batching: map['batching'] == null ? null : BatchingConfigurationResponse.fromMap((map['batching'] as Map).cast<String, dynamic>()),
      database: map['database'] as String,
      host: map['host'] as String,
    );
  }
}

