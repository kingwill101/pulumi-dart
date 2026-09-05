// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_vpc_endpoint_timeouts.dart';

/// {@template pulumi_opensearch_serverless_vpc_endpoint_serverless_vpc_endpoint_args_doc}
/// The set of arguments for ServerlessVpcEndpoint.
/// {@endtemplate}
/// {@macro pulumi_opensearch_serverless_vpc_endpoint_serverless_vpc_endpoint_args_doc}
class ServerlessVpcEndpointArgs {
  /// Name of the interface endpoint.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// One or more security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint. Up to 5 security groups can be provided.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// One or more subnet IDs from which you'll access OpenSearch Serverless. Up to 6 subnets can be provided.
  final pulumi.Input<List<String>> subnetIds;
  final pulumi.Input<ServerlessVpcEndpointTimeouts?>? timeouts;
  /// ID of the VPC from which you'll access OpenSearch Serverless.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpcId;

  /// Creates a new [ServerlessVpcEndpointArgs].
  /// [name] Name of the interface endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] One or more security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint. Up to 5 security groups can be provided.
  /// [subnetIds] One or more subnet IDs from which you'll access OpenSearch Serverless. Up to 6 subnets can be provided.
  /// [timeouts] Optional.
  /// [vpcId] ID of the VPC from which you'll access OpenSearch Serverless.
  const ServerlessVpcEndpointArgs({
    this.name,
    this.region,
    this.securityGroupIds,
    required this.subnetIds,
    this.timeouts,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': subnetIds,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ServerlessVpcEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': vpcId,
    };
  }

  factory ServerlessVpcEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessVpcEndpointArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessVpcEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
