// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_graph_endpoint_timeouts.dart';

/// {@template pulumi_neptunegraph_private_graph_endpoint_private_graph_endpoint_args_doc}
/// The set of arguments for PrivateGraphEndpoint.
/// {@endtemplate}
/// {@macro pulumi_neptunegraph_private_graph_endpoint_private_graph_endpoint_args_doc}
class PrivateGraphEndpointArgs {
  /// Unique identifier of the Neptune Analytics graph.
  final pulumi.Input<String> graphIdentifier;
  /// Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Subnets in which private graph endpoint ENIs are created.
  final pulumi.Input<List<String>?>? subnetIds;
  final pulumi.Input<PrivateGraphEndpointTimeouts?>? timeouts;
  /// VPC in which the private graph endpoint needs to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpcId;
  /// Security groups to be attached to the private graph endpoint. The Neptune Analytics API does not return this value, so Terraform cannot detect drift or repopulate it on import; the value present at creation persists in state until changed in configuration.
  final pulumi.Input<List<String>?>? vpcSecurityGroupIds;

  /// Creates a new [PrivateGraphEndpointArgs].
  /// [graphIdentifier] Unique identifier of the Neptune Analytics graph.
  /// [region] Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  /// [subnetIds] Subnets in which private graph endpoint ENIs are created.
  /// [timeouts] Optional.
  /// [vpcId] VPC in which the private graph endpoint needs to be created.
  /// [vpcSecurityGroupIds] Security groups to be attached to the private graph endpoint. The Neptune Analytics API does not return this value, so Terraform cannot detect drift or repopulate it on import; the value present at creation persists in state until changed in configuration.
  const PrivateGraphEndpointArgs({
    required this.graphIdentifier,
    this.region,
    this.subnetIds,
    this.timeouts,
    required this.vpcId,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graphIdentifier': graphIdentifier,
      'region': ?region,
      'subnetIds': ?subnetIds,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PrivateGraphEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': vpcId,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory PrivateGraphEndpointArgs.fromMap(Map<String, dynamic> map) {
    return PrivateGraphEndpointArgs(
      graphIdentifier: pulumi.Input.fromValue(map['graphIdentifier'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateGraphEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
