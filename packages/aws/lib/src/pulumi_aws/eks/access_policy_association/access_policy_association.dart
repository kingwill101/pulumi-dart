import 'package:pulumi/pulumi.dart' as pulumi;
import '../access_policy_association_access_scope/access_policy_association_access_scope.dart';
import 'access_policy_association_args.dart';

/// Access Entry Policy Association for an EKS Cluster.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS access entry using the `cluster_name` `principal_arn` and `policy_arn` separated by an octothorp (`#`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/accessPolicyAssociation:AccessPolicyAssociation my_eks_access_entry my_cluster_name#my_principal_arn#my_policy_arn
/// ```
class AccessPolicyAssociation extends pulumi.CustomResource {
  /// The configuration block to determine the scope of the access. See `access_scope` Block below.
  late final pulumi.Output<AccessPolicyAssociationAccessScope> accessScope;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was associated.
  late final pulumi.Output<String> associatedAt;

  /// Name of the EKS Cluster.
  late final pulumi.Output<String> clusterName;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was updated.
  late final pulumi.Output<String> modifiedAt;

  /// The ARN of the access policy that you're associating.
  late final pulumi.Output<String> policyArn;

  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  late final pulumi.Output<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  AccessPolicyAssociation(
    String name, {
    AccessPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/accessPolicyAssociation:AccessPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessScope =
        registerOutput<AccessPolicyAssociationAccessScope>('accessScope');
    this.associatedAt = registerOutput<String>('associatedAt');
    this.clusterName = registerOutput<String>('clusterName');
    this.modifiedAt = registerOutput<String>('modifiedAt');
    this.policyArn = registerOutput<String>('policyArn');
    this.principalArn = registerOutput<String>('principalArn');
    this.region = registerOutput<String>('region');
  }
}
