import 'package:pulumi/pulumi.dart';
import 'cluster_iam_roles_args.dart';

/// Provides a Redshift Cluster IAM Roles resource.
///
/// > **NOTE:** A Redshift cluster's default IAM role can be managed both by this resource's `default_iam_role_arn` argument and the `aws.redshift.Cluster` resource's `default_iam_role_arn` argument. Do not configure different values for both arguments. Doing so will cause a conflict of default IAM roles.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Cluster IAM Roless using the `cluster_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/clusterIamRoles:ClusterIamRoles examplegroup1 example
/// ```
class ClusterIamRoles extends CustomResource {
  /// The name of the Redshift Cluster IAM Roles.
  late final Output<String> clusterIdentifier;

  /// The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  late final Output<String> defaultIamRoleArn;

  /// A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  late final Output<List<String>> iamRoleArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ClusterIamRoles(
    String name, {
    ClusterIamRolesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/clusterIamRoles:ClusterIamRoles',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.defaultIamRoleArn = registerOutput<String>('defaultIamRoleArn');
    this.iamRoleArns = registerOutput<List<String>>('iamRoleArns');
    this.region = registerOutput<String>('region');
  }
}
