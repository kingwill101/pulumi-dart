// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EndpointAccess.
class EndpointAccessArgs {
  /// The cluster identifier of the cluster to access.
  final Input<String> clusterIdentifier;

  /// The Redshift-managed VPC endpoint name.
  final Input<String> endpointName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.
  final Input<String>? resourceOwner;

  /// The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.
  final Input<String> subnetGroupName;

  /// The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  final Input<List<String>>? vpcSecurityGroupIds;

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
      clusterIdentifier: Input.asInput<String>(map['clusterIdentifier']),
      endpointName: Input.asInput<String>(map['endpointName']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceOwner: Input.asOptionalInput<String>(map['resourceOwner']),
      subnetGroupName: Input.asInput<String>(map['subnetGroupName']),
      vpcSecurityGroupIds:
          Input.asOptionalInput<List<String>>(map['vpcSecurityGroupIds']),
    );
  }
}
