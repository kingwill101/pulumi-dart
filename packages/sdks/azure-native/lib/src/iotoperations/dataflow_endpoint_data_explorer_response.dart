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
  /// Host of the Azure Data Explorer in the form of &lt;cluster&gt;.&lt;region&gt;.kusto.windows.net .
  final pulumi.Input<String> host;

  /// Creates a new [DataflowEndpointDataExplorerResponse].
  /// [authentication] Authentication configuration. NOTE - only authentication property is allowed per entry.
  /// [batching] Azure Data Explorer endpoint batching configuration.
  /// [database] Database name.
  /// [host] Host of the Azure Data Explorer in the form of &lt;cluster&gt;.&lt;region&gt;.kusto.windows.net .
  const DataflowEndpointDataExplorerResponse({
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
      authentication: pulumi.Input.fromValue(DataflowEndpointDataExplorerAuthenticationResponse.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      batching: (() { final guardedValue = map['batching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchingConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      database: pulumi.Input.fromValue(map['database'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
    );
  }
}

