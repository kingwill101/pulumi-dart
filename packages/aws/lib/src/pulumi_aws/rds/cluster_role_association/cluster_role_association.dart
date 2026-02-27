import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_role_association_args.dart';

/// Manages a RDS DB Cluster association with an IAM Role. Example use cases:
///
/// * [Creating an IAM Role to Allow Amazon Aurora to Access AWS Services](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.IAM.CreateRole.html)
/// * [Importing Amazon S3 Data into an RDS PostgreSQL DB Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PostgreSQL.S3Import.html)
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.ClusterRoleAssociation` using the DB Cluster Identifier and IAM Role ARN separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterRoleAssociation:ClusterRoleAssociation example my-db-cluster,arn:aws:iam::123456789012:role/my-role
/// ```
class ClusterRoleAssociation extends pulumi.CustomResource {
  /// DB Cluster Identifier to associate with the IAM Role.
  late final pulumi.Output<String> dbClusterIdentifier;

  /// Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  late final pulumi.Output<String?> featureName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon Resource Name (ARN) of the IAM Role to associate with the DB Cluster.
  late final pulumi.Output<String> roleArn;

  ClusterRoleAssociation(
    String name, {
    ClusterRoleAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterRoleAssociation:ClusterRoleAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    this.featureName = registerOutput<String?>('featureName');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
  }
}
