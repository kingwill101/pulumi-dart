// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_access_vpc_endpoint.dart';

/// Input properties used for looking up and filtering EndpointAccess resources.
class EndpointAccessState {
  /// The DNS address of the endpoint.
  final pulumi.Input<String>? address;
  /// The cluster identifier of the cluster to access.
  final pulumi.Input<String>? clusterIdentifier;
  /// The Redshift-managed VPC endpoint name.
  final pulumi.Input<String>? endpointName;
  /// The port number on which the cluster accepts incoming connections.
  final pulumi.Input<int>? port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.
  final pulumi.Input<String>? resourceOwner;
  /// The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.
  final pulumi.Input<String>? subnetGroupName;
  /// The connection endpoint for connecting to an Amazon Redshift cluster through the proxy. See details below.
  final pulumi.Input<List<EndpointAccessVpcEndpoint>>? vpcEndpoints;
  /// The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [EndpointAccessState].
  /// [address] The DNS address of the endpoint.
  /// [clusterIdentifier] The cluster identifier of the cluster to access.
  /// [endpointName] The Redshift-managed VPC endpoint name.
  /// [port] The port number on which the cluster accepts incoming connections.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceOwner] The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.
  /// [subnetGroupName] The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.
  /// [vpcEndpoints] The connection endpoint for connecting to an Amazon Redshift cluster through the proxy. See details below.
  /// [vpcSecurityGroupIds] The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  EndpointAccessState({
    pulumi.Output<String>? address,
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<String>? endpointName,
    pulumi.Output<int>? port,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceOwner,
    pulumi.Output<String>? subnetGroupName,
    pulumi.Output<List<EndpointAccessVpcEndpoint>>? vpcEndpoints,
    pulumi.Output<List<String>>? vpcSecurityGroupIds,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      endpointName = pulumi.Input.asOptionalInput<String>(endpointName),
      port = pulumi.Input.asOptionalInput<int>(port),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceOwner = pulumi.Input.asOptionalInput<String>(resourceOwner),
      subnetGroupName = pulumi.Input.asOptionalInput<String>(subnetGroupName),
      vpcEndpoints = pulumi.Input.asOptionalInput<List<EndpointAccessVpcEndpoint>>(vpcEndpoints),
      vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'clusterIdentifier': ?clusterIdentifier,
      'endpointName': ?endpointName,
      'port': ?port,
      'region': ?region,
      'resourceOwner': ?resourceOwner,
      'subnetGroupName': ?subnetGroupName,
      'vpcEndpoints': ?pulumi.Input.mapOptionalInputValue<List<EndpointAccessVpcEndpoint>, List<Map<String, dynamic>>>(vpcEndpoints, (value) => pulumi.Input.encodeList<EndpointAccessVpcEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory EndpointAccessState.fromMap(Map<String, dynamic> map) {
    return EndpointAccessState(
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      endpointName: map['endpointName'] == null ? null : pulumi.Output.create<String>(map['endpointName'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceOwner: map['resourceOwner'] == null ? null : pulumi.Output.create<String>(map['resourceOwner'] as String),
      subnetGroupName: map['subnetGroupName'] == null ? null : pulumi.Output.create<String>(map['subnetGroupName'] as String),
      vpcEndpoints: map['vpcEndpoints'] == null ? null : pulumi.Output.create<List<EndpointAccessVpcEndpoint>>(pulumi.Input.decodeList<EndpointAccessVpcEndpoint>(map['vpcEndpoints'], (value) => EndpointAccessVpcEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcSecurityGroupIds'] as List).cast<String>()),
    );
  }
}

