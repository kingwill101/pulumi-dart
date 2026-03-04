// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batching_configuration.dart';
import 'dataflow_endpoint_data_explorer_authentication.dart';

/// Azure Data Explorer endpoint properties
class DataflowEndpointDataExplorer {
  /// Authentication configuration. NOTE - only authentication property is allowed per entry.
  final pulumi.Input<DataflowEndpointDataExplorerAuthentication> authentication;

  /// Azure Data Explorer endpoint batching configuration.
  final pulumi.Input<BatchingConfiguration>? batching;

  /// Database name.
  final pulumi.Input<String> database;

  /// Host of the Azure Data Explorer in the form of &lt;cluster&gt;.&lt;region&gt;.kusto.windows.net .
  final pulumi.Input<String> host;

  /// Creates a new [DataflowEndpointDataExplorer].
  /// [authentication] Authentication configuration. NOTE - only authentication property is allowed per entry.
  /// [batching] Azure Data Explorer endpoint batching configuration.
  /// [database] Database name.
  /// [host] Host of the Azure Data Explorer in the form of &lt;cluster&gt;.&lt;region&gt;.kusto.windows.net .
  DataflowEndpointDataExplorer({
    required this.authentication,
    this.batching,
    required this.database,
    required this.host,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication':
          pulumi.Input.mapInputValue<
            DataflowEndpointDataExplorerAuthentication,
            Map<String, dynamic>
          >(authentication, (value) => value.toMap()),
      'batching':
          ?pulumi.Input.mapOptionalInputValue<
            BatchingConfiguration,
            Map<String, dynamic>
          >(batching, (value) => value.toMap()),
      'database': database,
      'host': host,
    };
  }

  factory DataflowEndpointDataExplorer.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointDataExplorer(
      authentication: pulumi.Input.fromValue(
        DataflowEndpointDataExplorerAuthentication.fromMap(
          (map['authentication']! as Map).cast<String, dynamic>(),
        ),
      ),
      batching: (() {
        final guardedValue = map['batching'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BatchingConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      database: pulumi.Input.fromValue(map['database'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
    );
  }
}
