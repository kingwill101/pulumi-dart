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
    this.address,
    this.clusterIdentifier,
    this.endpointName,
    this.port,
    this.region,
    this.resourceOwner,
    this.subnetGroupName,
    this.vpcEndpoints,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'clusterIdentifier': ?clusterIdentifier,
      'endpointName': ?endpointName,
      'port': ?port,
      'region': ?region,
      'resourceOwner': ?resourceOwner,
      'subnetGroupName': ?subnetGroupName,
      'vpcEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<EndpointAccessVpcEndpoint>,
            List<Map<String, dynamic>>
          >(
            vpcEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  EndpointAccessVpcEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory EndpointAccessState.fromMap(Map<String, dynamic> map) {
    return EndpointAccessState(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterIdentifier: (() {
        final guardedValue = map['clusterIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointName: (() {
        final guardedValue = map['endpointName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceOwner: (() {
        final guardedValue = map['resourceOwner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetGroupName: (() {
        final guardedValue = map['subnetGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcEndpoints: (() {
        final guardedValue = map['vpcEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EndpointAccessVpcEndpoint>(
            guardedValue,
            (value) => EndpointAccessVpcEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vpcSecurityGroupIds: (() {
        final guardedValue = map['vpcSecurityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
