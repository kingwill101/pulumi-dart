// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointAuthorization resources.
class EndpointAuthorizationState {
  /// The Amazon Web Services account ID to grant access to.
  final pulumi.Input<String>? account;
  /// Indicates whether all VPCs in the grantee account are allowed access to the cluster.
  final pulumi.Input<bool>? allowedAllVpcs;
  /// The cluster identifier of the cluster to grant access to.
  final pulumi.Input<String>? clusterIdentifier;
  /// The number of Redshift-managed VPC endpoints created for the authorization.
  final pulumi.Input<int>? endpointCount;
  /// Indicates whether to force the revoke action. If true, the Redshift-managed VPC endpoints associated with the endpoint authorization are also deleted. Default value is `false`.
  final pulumi.Input<bool>? forceDelete;
  /// The Amazon Web Services account ID of the grantee of the cluster.
  final pulumi.Input<String>? grantee;
  /// The Amazon Web Services account ID of the cluster owner.
  final pulumi.Input<String>? grantor;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The virtual private cloud (VPC) identifiers to grant access to. If none are specified all VPCs in shared account are allowed.
  final pulumi.Input<List<String>>? vpcIds;

  /// Creates a new [EndpointAuthorizationState].
  /// [account] The Amazon Web Services account ID to grant access to.
  /// [allowedAllVpcs] Indicates whether all VPCs in the grantee account are allowed access to the cluster.
  /// [clusterIdentifier] The cluster identifier of the cluster to grant access to.
  /// [endpointCount] The number of Redshift-managed VPC endpoints created for the authorization.
  /// [forceDelete] Indicates whether to force the revoke action. If true, the Redshift-managed VPC endpoints associated with the endpoint authorization are also deleted. Default value is `false`.
  /// [grantee] The Amazon Web Services account ID of the grantee of the cluster.
  /// [grantor] The Amazon Web Services account ID of the cluster owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcIds] The virtual private cloud (VPC) identifiers to grant access to. If none are specified all VPCs in shared account are allowed.
  EndpointAuthorizationState({
    this.account,
    this.allowedAllVpcs,
    this.clusterIdentifier,
    this.endpointCount,
    this.forceDelete,
    this.grantee,
    this.grantor,
    this.region,
    this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?account,
      'allowedAllVpcs': ?allowedAllVpcs,
      'clusterIdentifier': ?clusterIdentifier,
      'endpointCount': ?endpointCount,
      'forceDelete': ?forceDelete,
      'grantee': ?grantee,
      'grantor': ?grantor,
      'region': ?region,
      'vpcIds': ?vpcIds,
    };
  }

  factory EndpointAuthorizationState.fromMap(Map<String, dynamic> map) {
    return EndpointAuthorizationState(
      account: map['account'] == null ? null : (map['account'] as String).input(),
      allowedAllVpcs: map['allowedAllVpcs'] == null ? null : (map['allowedAllVpcs'] as bool).input(),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : (map['clusterIdentifier'] as String).input(),
      endpointCount: map['endpointCount'] == null ? null : (map['endpointCount'] as int).input(),
      forceDelete: map['forceDelete'] == null ? null : (map['forceDelete'] as bool).input(),
      grantee: map['grantee'] == null ? null : (map['grantee'] as String).input(),
      grantor: map['grantor'] == null ? null : (map['grantor'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      vpcIds: map['vpcIds'] == null ? null : ((map['vpcIds'] as List).cast<String>()).input(),
    );
  }
}

