// ignore_for_file: unused_element, unnecessary_cast

import 'batching_configuration_response.dart';
import 'dataflow_endpoint_fabric_one_lake_authentication_response.dart';
import 'dataflow_endpoint_fabric_one_lake_names_response.dart';

/// Microsoft Fabric endpoint properties
class DataflowEndpointFabricOneLakeResponse {
  /// Authentication configuration. NOTE - only one authentication property is allowed per entry.
  final DataflowEndpointFabricOneLakeAuthenticationResponse authentication;
  /// Batching configuration.
  final BatchingConfigurationResponse? batching;
  /// Host of the Microsoft Fabric in the form of https://<host>.fabric.microsoft.com.
  final String host;
  /// Names of the workspace and lakehouse.
  final DataflowEndpointFabricOneLakeNamesResponse names;
  /// Type of location of the data in the workspace. Can be either tables or files.
  final String oneLakePathType;

  /// Creates a new [DataflowEndpointFabricOneLakeResponse].
  /// [authentication] Authentication configuration. NOTE - only one authentication property is allowed per entry.
  /// [batching] Batching configuration.
  /// [host] Host of the Microsoft Fabric in the form of https://<host>.fabric.microsoft.com.
  /// [names] Names of the workspace and lakehouse.
  /// [oneLakePathType] Type of location of the data in the workspace. Can be either tables or files.
  DataflowEndpointFabricOneLakeResponse({
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

  factory DataflowEndpointFabricOneLakeResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointFabricOneLakeResponse(
      authentication: DataflowEndpointFabricOneLakeAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      batching: map['batching'] == null ? null : BatchingConfigurationResponse.fromMap((map['batching'] as Map).cast<String, dynamic>()),
      host: map['host'] as String,
      names: DataflowEndpointFabricOneLakeNamesResponse.fromMap((map['names'] as Map).cast<String, dynamic>()),
      oneLakePathType: map['oneLakePathType'] as String,
    );
  }
}

