// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_vpc_endpoint_timeouts.dart';

/// Input properties used for looking up and filtering ServerlessVpcEndpoint resources.
class ServerlessVpcEndpointState {
  /// Name of the interface endpoint.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// One or more security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint. Up to 5 security groups can be provided.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// One or more subnet IDs from which you'll access OpenSearch Serverless. Up to 6 subnets can be provided.
  final pulumi.Input<List<String>>? subnetIds;
  final pulumi.Input<ServerlessVpcEndpointTimeouts>? timeouts;
  /// ID of the VPC from which you'll access OpenSearch Serverless.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ServerlessVpcEndpointState].
  /// [name] Name of the interface endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] One or more security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint. Up to 5 security groups can be provided.
  /// [subnetIds] One or more subnet IDs from which you'll access OpenSearch Serverless. Up to 6 subnets can be provided.
  /// [timeouts] Optional.
  /// [vpcId] ID of the VPC from which you'll access OpenSearch Serverless.
  ServerlessVpcEndpointState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<ServerlessVpcEndpointTimeouts>? timeouts,
    pulumi.Output<String>? vpcId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      timeouts = pulumi.Input.asOptionalInput<ServerlessVpcEndpointTimeouts>(timeouts),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ServerlessVpcEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory ServerlessVpcEndpointState.fromMap(Map<String, dynamic> map) {
    return ServerlessVpcEndpointState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ServerlessVpcEndpointTimeouts>(ServerlessVpcEndpointTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

