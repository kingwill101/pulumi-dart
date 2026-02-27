// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EndpointAccess.
class EndpointAccessArgs {
  /// The cluster identifier of the cluster to access.
  final pulumi.Input<String> clusterIdentifier;

  /// The Redshift-managed VPC endpoint name.
  final pulumi.Input<String> endpointName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.
  final pulumi.Input<String>? resourceOwner;

  /// The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.
  final pulumi.Input<String> subnetGroupName;

  /// The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  EndpointAccessArgs({
    required this.clusterIdentifier,
    required this.endpointName,
    this.region,
    this.resourceOwner,
    required this.subnetGroupName,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterIdentifier'] = clusterIdentifier;
    map['endpointName'] = endpointName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceOwnerValue = resourceOwner;
    if (resourceOwnerValue != null) {
      map['resourceOwner'] = resourceOwnerValue;
    }
    map['subnetGroupName'] = subnetGroupName;
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    return map;
  }

  factory EndpointAccessArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAccessArgs(
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      endpointName: pulumi.Input.asInput<String>(map['endpointName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceOwner: pulumi.Input.asOptionalInput<String>(map['resourceOwner']),
      subnetGroupName: pulumi.Input.asInput<String>(map['subnetGroupName']),
      vpcSecurityGroupIds: pulumi.Input.asOptionalInput<List<String>>(
          map['vpcSecurityGroupIds']),
    );
  }
}
