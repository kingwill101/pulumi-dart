// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_endpoint_access_endpoint_access_args_doc}
/// The set of arguments for EndpointAccess.
/// {@endtemplate}
/// {@macro pulumi_redshift_endpoint_access_endpoint_access_args_doc}
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

  /// Creates a new [EndpointAccessArgs].
  /// [clusterIdentifier] The cluster identifier of the cluster to access.
  /// [endpointName] The Redshift-managed VPC endpoint name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceOwner] The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.
  /// [subnetGroupName] The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.
  /// [vpcSecurityGroupIds] The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  EndpointAccessArgs({
    required String clusterIdentifier,
    required String endpointName,
    String? region,
    String? resourceOwner,
    required String subnetGroupName,
    List<String>? vpcSecurityGroupIds,
  })  : clusterIdentifier = pulumi.Input.asInput<String>(clusterIdentifier),
        endpointName = pulumi.Input.asInput<String>(endpointName),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceOwner = pulumi.Input.asOptionalInput<String>(resourceOwner),
        subnetGroupName = pulumi.Input.asInput<String>(subnetGroupName),
        vpcSecurityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds);

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
      clusterIdentifier: map['clusterIdentifier'] as String,
      endpointName: map['endpointName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceOwner:
          map['resourceOwner'] == null ? null : map['resourceOwner'] as String,
      subnetGroupName: map['subnetGroupName'] as String,
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null
          ? null
          : (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}
