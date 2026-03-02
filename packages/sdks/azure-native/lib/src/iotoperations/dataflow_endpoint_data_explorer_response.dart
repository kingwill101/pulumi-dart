// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batching_configuration_response.dart';
import 'dataflow_endpoint_data_explorer_authentication_response.dart';

/// Azure Data Explorer endpoint properties
class DataflowEndpointDataExplorerResponse {
  /// Authentication configuration. NOTE - only authentication property is allowed per entry.
  final pulumi.Input<DataflowEndpointDataExplorerAuthenticationResponse> authentication;
  /// Azure Data Explorer endpoint batching configuration.
  final pulumi.Input<BatchingConfigurationResponse>? batching;
  /// Database name.
  final pulumi.Input<String> database;
  /// Host of the Azure Data Explorer in the form of <cluster>.<region>.kusto.windows.net .
  final pulumi.Input<String> host;

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
      'authentication': pulumi.Input.mapInputValue<DataflowEndpointDataExplorerAuthenticationResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'batching': ?pulumi.Input.mapOptionalInputValue<BatchingConfigurationResponse, Map<String, dynamic>>(batching, (value) => value.toMap()),
      'database': database,
      'host': host,
    };
  }

  factory DataflowEndpointDataExplorerResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointDataExplorerResponse(
      authentication: (DataflowEndpointDataExplorerAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      batching: map['batching'] == null ? null : (BatchingConfigurationResponse.fromMap((map['batching']! as Map).cast<String, dynamic>())).input(),
      database: (map['database'] as String).input(),
      host: (map['host'] as String).input(),
    );
  }
}

