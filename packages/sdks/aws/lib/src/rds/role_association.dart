import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_association_args.dart';
import 'role_association_state.dart';

/// Manages an RDS DB Instance association with an IAM Role. Example use cases:
///
/// * [Amazon RDS Oracle integration with Amazon S3](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-s3-integration.html)
/// * [Importing Amazon S3 Data into an RDS PostgreSQL DB Instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PostgreSQL.S3Import.html)
///
/// > To manage the RDS DB Instance IAM Role for [Enhanced Monitoring](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html), see the `aws.rds.Instance` resource `monitoring_role_arn` argument instead.
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.RoleAssociation` using the DB Instance Identifier and IAM Role ARN separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:rds/roleAssociation:RoleAssociation example my-db-instance,arn:aws:iam::123456789012:role/my-role
/// ```
class RoleAssociation extends pulumi.CustomResource {
  /// DB Instance Identifier to associate with the IAM Role.
  late final pulumi.Output<String> dbInstanceIdentifier;
  /// Name of the feature for association. This can be found in the AWS documentation relevant to the integration or a full list is available in the `SupportedFeatureNames` list returned by [AWS CLI rds describe-db-engine-versions](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html).
  late final pulumi.Output<String> featureName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon Resource Name (ARN) of the IAM Role to associate with the DB Instance.
  late final pulumi.Output<String> roleArn;

  /// Creates a new [RoleAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleAssociation]. {@macro pulumi_rds_role_association_role_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleAssociation(
    String name, {
    RoleAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/roleAssociation:RoleAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dbInstanceIdentifier = registerOutput<String>('dbInstanceIdentifier');
    this.featureName = registerOutput<String>('featureName');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
  }

  /// Gets an existing [RoleAssociation] resource's state with the given [name] and [id].
  static RoleAssociation get(
    String name,
    pulumi.Input<String> id, {
    RoleAssociationState? state,
  }) {
    return RoleAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RoleAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/roleAssociation:RoleAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dbInstanceIdentifier = registerOutput<String>('dbInstanceIdentifier');
    this.featureName = registerOutput<String>('featureName');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
  }
}
