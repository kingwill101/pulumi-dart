// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_endpoint_authorization_endpoint_authorization_args_doc}
/// The set of arguments for EndpointAuthorization.
/// {@endtemplate}
/// {@macro pulumi_redshift_endpoint_authorization_endpoint_authorization_args_doc}
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

  /// Creates a new [EndpointAuthorizationArgs].
  /// [account] The Amazon Web Services account ID to grant access to.
  /// [clusterIdentifier] The cluster identifier of the cluster to grant access to.
  /// [forceDelete] Indicates whether to force the revoke action. If true, the Redshift-managed VPC endpoints associated with the endpoint authorization are also deleted. Default value is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcIds] The virtual private cloud (VPC) identifiers to grant access to. If none are specified all VPCs in shared account are allowed.
  EndpointAuthorizationArgs({
    required this.account,
    required this.clusterIdentifier,
    this.forceDelete,
    this.region,
    this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': account,
      'clusterIdentifier': clusterIdentifier,
      'forceDelete': ?forceDelete,
      'region': ?region,
      'vpcIds': ?vpcIds,
    };
  }

  factory EndpointAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAuthorizationArgs(
      account: (map['account'] as String).input(),
      clusterIdentifier: (map['clusterIdentifier'] as String).input(),
      forceDelete: map['forceDelete'] == null ? null : (map['forceDelete'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      vpcIds: map['vpcIds'] == null ? null : ((map['vpcIds'] as List).cast<String>()).input(),
    );
  }
}

