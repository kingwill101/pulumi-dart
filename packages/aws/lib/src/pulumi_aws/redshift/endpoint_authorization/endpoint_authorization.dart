import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_authorization_args.dart';

/// Creates a new Amazon Redshift endpoint authorization.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift endpoint authorization using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/endpointAuthorization:EndpointAuthorization example 01234567910:cluster-example-id
/// ```
class EndpointAuthorization extends pulumi.CustomResource {
  /// The Amazon Web Services account ID to grant access to.
  late final pulumi.Output<String> account;

  /// Indicates whether all VPCs in the grantee account are allowed access to the cluster.
  late final pulumi.Output<bool> allowedAllVpcs;

  /// The cluster identifier of the cluster to grant access to.
  late final pulumi.Output<String> clusterIdentifier;

  /// The number of Redshift-managed VPC endpoints created for the authorization.
  late final pulumi.Output<int> endpointCount;

  /// Indicates whether to force the revoke action. If true, the Redshift-managed VPC endpoints associated with the endpoint authorization are also deleted. Default value is `false`.
  late final pulumi.Output<bool?> forceDelete;

  /// The Amazon Web Services account ID of the grantee of the cluster.
  late final pulumi.Output<String> grantee;

  /// The Amazon Web Services account ID of the cluster owner.
  late final pulumi.Output<String> grantor;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The virtual private cloud (VPC) identifiers to grant access to. If none are specified all VPCs in shared account are allowed.
  late final pulumi.Output<List<String>?> vpcIds;

  EndpointAuthorization(
    String name, {
    EndpointAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/endpointAuthorization:EndpointAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.account = registerOutput<String>('account');
    this.allowedAllVpcs = registerOutput<bool>('allowedAllVpcs');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.endpointCount = registerOutput<int>('endpointCount');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.grantee = registerOutput<String>('grantee');
    this.grantor = registerOutput<String>('grantor');
    this.region = registerOutput<String>('region');
    this.vpcIds = registerOutput<List<String>?>('vpcIds');
  }
}
