// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_vpc_endpoint_timeouts.dart';

/// {@template pulumi_opensearch_serverless_vpc_endpoint_serverless_vpc_endpoint_args_doc}
/// The set of arguments for ServerlessVpcEndpoint.
/// {@endtemplate}
/// {@macro pulumi_opensearch_serverless_vpc_endpoint_serverless_vpc_endpoint_args_doc}
class ServerlessVpcEndpointArgs {
  /// Name of the interface endpoint.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// One or more security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint. Up to 5 security groups can be provided.
  final pulumi.Input<List<String>>? securityGroupIds;

  /// One or more subnet IDs from which you'll access OpenSearch Serverless. Up to 6 subnets can be provided.
  final pulumi.Input<List<String>> subnetIds;
  final pulumi.Input<ServerlessVpcEndpointTimeouts>? timeouts;

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
  ServerlessVpcEndpointArgs({
    String? name,
    String? region,
    List<String>? securityGroupIds,
    required List<String> subnetIds,
    ServerlessVpcEndpointTimeouts? timeouts,
    required String vpcId,
  }) : name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(
         securityGroupIds,
       ),
       subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
       timeouts = pulumi.Input.asOptionalInput<ServerlessVpcEndpointTimeouts>(
         timeouts,
       ),
       vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': subnetIds,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ServerlessVpcEndpointTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'vpcId': vpcId,
    };
  }

  factory ServerlessVpcEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessVpcEndpointArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      timeouts: map['timeouts'] == null
          ? null
          : ServerlessVpcEndpointTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      vpcId: map['vpcId'] as String,
    );
  }
}
