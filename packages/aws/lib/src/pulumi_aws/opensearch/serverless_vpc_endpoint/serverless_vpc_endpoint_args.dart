// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../serverless_vpc_endpoint_timeouts/serverless_vpc_endpoint_timeouts.dart';

/// The set of arguments for ServerlessVpcEndpoint.
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

  ServerlessVpcEndpointArgs({
    this.name,
    this.region,
    this.securityGroupIds,
    required this.subnetIds,
    this.timeouts,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    map['subnetIds'] = subnetIds;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ServerlessVpcEndpointTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory ServerlessVpcEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessVpcEndpointArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          pulumi.Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      subnetIds: pulumi.Input.asInput<List<String>>(map['subnetIds']),
      timeouts: pulumi.Input.asOptionalInput<ServerlessVpcEndpointTimeouts>(
          map['timeouts']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}
