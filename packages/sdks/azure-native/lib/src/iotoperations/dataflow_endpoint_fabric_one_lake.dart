// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batching_configuration.dart';
import 'dataflow_endpoint_fabric_one_lake_authentication.dart';
import 'dataflow_endpoint_fabric_one_lake_names.dart';

/// Microsoft Fabric endpoint properties
class DataflowEndpointFabricOneLake {
  /// Authentication configuration. NOTE - only one authentication property is allowed per entry.
  final pulumi.Input<DataflowEndpointFabricOneLakeAuthentication> authentication;
  /// Batching configuration.
  final pulumi.Input<BatchingConfiguration?>? batching;
  /// Host of the Microsoft Fabric in the form of https://&lt;host&gt;.fabric.microsoft.com.
  final pulumi.Input<String> host;
  /// Names of the workspace and lakehouse.
  final pulumi.Input<DataflowEndpointFabricOneLakeNames> names;
  /// Type of location of the data in the workspace. Can be either tables or files.
  final pulumi.Input<dynamic> oneLakePathType;

  /// Creates a new [DataflowEndpointFabricOneLake].
  /// [authentication] Authentication configuration. NOTE - only one authentication property is allowed per entry.
  /// [batching] Batching configuration.
  /// [host] Host of the Microsoft Fabric in the form of https://&lt;host&gt;.fabric.microsoft.com.
  /// [names] Names of the workspace and lakehouse.
  /// [oneLakePathType] Type of location of the data in the workspace. Can be either tables or files.
  const DataflowEndpointFabricOneLake({
    required this.authentication,
    this.batching,
    required this.host,
    required this.names,
    required this.oneLakePathType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<DataflowEndpointFabricOneLakeAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'batching': ?pulumi.Input.mapOptionalInputValue<BatchingConfiguration, Map<String, dynamic>>(batching, (value) => value.toMap()),
      'host': host,
      'names': pulumi.Input.mapInputValue<DataflowEndpointFabricOneLakeNames, Map<String, dynamic>>(names, (value) => value.toMap()),
      'oneLakePathType': oneLakePathType,
    };
  }

  factory DataflowEndpointFabricOneLake.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointFabricOneLake(
      authentication: pulumi.Input.fromValue(DataflowEndpointFabricOneLakeAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      batching: (() { final guardedValue = map['batching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      names: pulumi.Input.fromValue(DataflowEndpointFabricOneLakeNames.fromMap((map['names']! as Map).cast<String, dynamic>())),
      oneLakePathType: pulumi.Input.fromValue(map['oneLakePathType']),
    );
  }
}
