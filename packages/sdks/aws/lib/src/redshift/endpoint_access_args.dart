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
  final pulumi.Input<String?>? region;
  /// The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.
  final pulumi.Input<String?>? resourceOwner;
  /// The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.
  final pulumi.Input<String> subnetGroupName;
  /// The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  final pulumi.Input<List<String>?>? vpcSecurityGroupIds;

  /// Creates a new [EndpointAccessArgs].
  /// [clusterIdentifier] The cluster identifier of the cluster to access.
  /// [endpointName] The Redshift-managed VPC endpoint name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceOwner] The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.
  /// [subnetGroupName] The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.
  /// [vpcSecurityGroupIds] The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  const EndpointAccessArgs({
    required this.clusterIdentifier,
    required this.endpointName,
    this.region,
    this.resourceOwner,
    required this.subnetGroupName,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': clusterIdentifier,
      'endpointName': endpointName,
      'region': ?region,
      'resourceOwner': ?resourceOwner,
      'subnetGroupName': subnetGroupName,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory EndpointAccessArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAccessArgs(
      clusterIdentifier: pulumi.Input.fromValue(map['clusterIdentifier'] as String),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceOwner: (() { final guardedValue = map['resourceOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetGroupName: pulumi.Input.fromValue(map['subnetGroupName'] as String),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
