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
  const EndpointAuthorizationState({
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
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedAllVpcs: (() { final guardedValue = map['allowedAllVpcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointCount: (() { final guardedValue = map['endpointCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      grantee: (() { final guardedValue = map['grantee']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantor: (() { final guardedValue = map['grantor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcIds: (() { final guardedValue = map['vpcIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
