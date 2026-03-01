// ignore_for_file: unused_element, unnecessary_cast

import 'batching_configuration.dart';
import 'dataflow_endpoint_fabric_one_lake_authentication.dart';
import 'dataflow_endpoint_fabric_one_lake_names.dart';

/// Microsoft Fabric endpoint properties
class DataflowEndpointFabricOneLake {
  /// Authentication configuration. NOTE - only one authentication property is allowed per entry.
  final DataflowEndpointFabricOneLakeAuthentication authentication;
  /// Batching configuration.
  final BatchingConfiguration? batching;
  /// Host of the Microsoft Fabric in the form of https://<host>.fabric.microsoft.com.
  final String host;
  /// Names of the workspace and lakehouse.
  final DataflowEndpointFabricOneLakeNames names;
  /// Type of location of the data in the workspace. Can be either tables or files.
  final String oneLakePathType;

  /// Creates a new [DataflowEndpointFabricOneLake].
  /// [authentication] Authentication configuration. NOTE - only one authentication property is allowed per entry.
  /// [batching] Batching configuration.
  /// [host] Host of the Microsoft Fabric in the form of https://<host>.fabric.microsoft.com.
  /// [names] Names of the workspace and lakehouse.
  /// [oneLakePathType] Type of location of the data in the workspace. Can be either tables or files.
  DataflowEndpointFabricOneLake({
    required this.authentication,
    this.batching,
    required this.host,
    required this.names,
    required this.oneLakePathType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication.toMap(),
      'batching': ?batching == null ? null : batching!.toMap(),
      'host': host,
      'names': names.toMap(),
      'oneLakePathType': oneLakePathType,
    };
  }

  factory DataflowEndpointFabricOneLake.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointFabricOneLake(
      authentication: DataflowEndpointFabricOneLakeAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      batching: map['batching'] == null ? null : BatchingConfiguration.fromMap((map['batching'] as Map).cast<String, dynamic>()),
      host: map['host'] as String,
      names: DataflowEndpointFabricOneLakeNames.fromMap((map['names'] as Map).cast<String, dynamic>()),
      oneLakePathType: map['oneLakePathType'] as String,
    );
  }
}

