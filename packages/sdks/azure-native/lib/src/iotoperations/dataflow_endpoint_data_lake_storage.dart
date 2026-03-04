// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batching_configuration.dart';
import 'dataflow_endpoint_data_lake_storage_authentication.dart';

/// Azure Data Lake endpoint properties
class DataflowEndpointDataLakeStorage {
  /// Authentication configuration. NOTE - only authentication property is allowed per entry.
  final pulumi.Input<DataflowEndpointDataLakeStorageAuthentication>
  authentication;

  /// Azure Data Lake endpoint batching configuration.
  final pulumi.Input<BatchingConfiguration>? batching;

  /// Host of the Azure Data Lake in the form of &lt;account&gt;.blob.core.windows.net .
  final pulumi.Input<String> host;

  /// Creates a new [DataflowEndpointDataLakeStorage].
  /// [authentication] Authentication configuration. NOTE - only authentication property is allowed per entry.
  /// [batching] Azure Data Lake endpoint batching configuration.
  /// [host] Host of the Azure Data Lake in the form of &lt;account&gt;.blob.core.windows.net .
  DataflowEndpointDataLakeStorage({
    required this.authentication,
    this.batching,
    required this.host,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication':
          pulumi.Input.mapInputValue<
            DataflowEndpointDataLakeStorageAuthentication,
            Map<String, dynamic>
          >(authentication, (value) => value.toMap()),
      'batching':
          ?pulumi.Input.mapOptionalInputValue<
            BatchingConfiguration,
            Map<String, dynamic>
          >(batching, (value) => value.toMap()),
      'host': host,
    };
  }

  factory DataflowEndpointDataLakeStorage.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointDataLakeStorage(
      authentication: pulumi.Input.fromValue(
        DataflowEndpointDataLakeStorageAuthentication.fromMap(
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
      host: pulumi.Input.fromValue(map['host'] as String),
    );
  }
}
