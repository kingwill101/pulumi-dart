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
    this.name,
    this.region,
    this.securityGroupIds,
    this.subnetIds,
    this.timeouts,
    this.vpcId,
  });

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
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      subnetIds: map['subnetIds'] == null ? null : (((map['subnetIds'] as List).cast<String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ServerlessVpcEndpointTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

