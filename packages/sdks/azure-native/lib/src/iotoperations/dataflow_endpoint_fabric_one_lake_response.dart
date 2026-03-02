// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batching_configuration_response.dart';
import 'dataflow_endpoint_fabric_one_lake_authentication_response.dart';
import 'dataflow_endpoint_fabric_one_lake_names_response.dart';

/// Microsoft Fabric endpoint properties
class DataflowEndpointFabricOneLakeResponse {
  /// Authentication configuration. NOTE - only one authentication property is allowed per entry.
  final pulumi.Input<DataflowEndpointFabricOneLakeAuthenticationResponse> authentication;
  /// Batching configuration.
  final pulumi.Input<BatchingConfigurationResponse>? batching;
  /// Host of the Microsoft Fabric in the form of https://<host>.fabric.microsoft.com.
  final pulumi.Input<String> host;
  /// Names of the workspace and lakehouse.
  final pulumi.Input<DataflowEndpointFabricOneLakeNamesResponse> names;
  /// Type of location of the data in the workspace. Can be either tables or files.
  final pulumi.Input<String> oneLakePathType;

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
      'authentication': pulumi.Input.mapInputValue<DataflowEndpointFabricOneLakeAuthenticationResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'batching': ?pulumi.Input.mapOptionalInputValue<BatchingConfigurationResponse, Map<String, dynamic>>(batching, (value) => value.toMap()),
      'host': host,
      'names': pulumi.Input.mapInputValue<DataflowEndpointFabricOneLakeNamesResponse, Map<String, dynamic>>(names, (value) => value.toMap()),
      'oneLakePathType': oneLakePathType,
    };
  }

  factory DataflowEndpointFabricOneLakeResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointFabricOneLakeResponse(
      authentication: (DataflowEndpointFabricOneLakeAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      batching: map['batching'] == null ? null : (BatchingConfigurationResponse.fromMap((map['batching']! as Map).cast<String, dynamic>())).input(),
      host: (map['host'] as String).input(),
      names: (DataflowEndpointFabricOneLakeNamesResponse.fromMap((map['names'] as Map).cast<String, dynamic>())).input(),
      oneLakePathType: (map['oneLakePathType'] as String).input(),
    );
  }
}

