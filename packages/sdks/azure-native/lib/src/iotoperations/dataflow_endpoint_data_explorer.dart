// ignore_for_file: unused_element, unnecessary_cast

import 'batching_configuration.dart';
import 'dataflow_endpoint_data_explorer_authentication.dart';

/// Azure Data Explorer endpoint properties
class DataflowEndpointDataExplorer {
  /// Authentication configuration. NOTE - only authentication property is allowed per entry.
  final DataflowEndpointDataExplorerAuthentication authentication;
  /// Azure Data Explorer endpoint batching configuration.
  final BatchingConfiguration? batching;
  /// Database name.
  final String database;
  /// Host of the Azure Data Explorer in the form of <cluster>.<region>.kusto.windows.net .
  final String host;

  /// Creates a new [DataflowEndpointDataExplorer].
  /// [authentication] Authentication configuration. NOTE - only authentication property is allowed per entry.
  /// [batching] Azure Data Explorer endpoint batching configuration.
  /// [database] Database name.
  /// [host] Host of the Azure Data Explorer in the form of <cluster>.<region>.kusto.windows.net .
  DataflowEndpointDataExplorer({
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

  factory DataflowEndpointDataExplorer.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointDataExplorer(
      authentication: DataflowEndpointDataExplorerAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      batching: map['batching'] == null ? null : BatchingConfiguration.fromMap((map['batching'] as Map).cast<String, dynamic>()),
      database: map['database'] as String,
      host: map['host'] as String,
    );
  }
}

