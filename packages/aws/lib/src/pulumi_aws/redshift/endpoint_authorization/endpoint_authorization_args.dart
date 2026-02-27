// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EndpointAuthorization.
class EndpointAuthorizationArgs {
  /// The Amazon Web Services account ID to grant access to.
  final pulumi.Input<String> account;

  /// The cluster identifier of the cluster to grant access to.
  final pulumi.Input<String> clusterIdentifier;

  /// Indicates whether to force the revoke action. If true, the Redshift-managed VPC endpoints associated with the endpoint authorization are also deleted. Default value is `false`.
  final pulumi.Input<bool>? forceDelete;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The virtual private cloud (VPC) identifiers to grant access to. If none are specified all VPCs in shared account are allowed.
  final pulumi.Input<List<String>>? vpcIds;

  EndpointAuthorizationArgs({
    required this.account,
    required this.clusterIdentifier,
    this.forceDelete,
    this.region,
    this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['account'] = account;
    map['clusterIdentifier'] = clusterIdentifier;
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final vpcIdsValue = vpcIds;
    if (vpcIdsValue != null) {
      map['vpcIds'] = vpcIdsValue;
    }
    return map;
  }

  factory EndpointAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAuthorizationArgs(
      account: pulumi.Input.asInput<String>(map['account']),
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      forceDelete: pulumi.Input.asOptionalInput<bool>(map['forceDelete']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcIds: pulumi.Input.asOptionalInput<List<String>>(map['vpcIds']),
    );
  }
}
