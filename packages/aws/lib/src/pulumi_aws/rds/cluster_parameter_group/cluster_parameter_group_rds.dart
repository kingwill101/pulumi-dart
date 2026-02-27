import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_parameter_group_parameter/cluster_parameter_group_parameter_rds.dart';
import 'cluster_parameter_group_rds_args.dart';

/// Provides an RDS DB cluster parameter group resource. Documentation of the available parameters for various Aurora engines can be found at:
///
/// * [Aurora MySQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Reference.html)
/// * [Aurora PostgreSQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraPostgreSQL.Reference.html)
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS Cluster Parameter Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterParameterGroup:ClusterParameterGroup cluster_pg production-pg-1
/// ```
class ClusterParameterGroupRds extends pulumi.CustomResource {
  /// The ARN of the db cluster parameter group.
  late final pulumi.Output<String> arn;

  /// The description of the DB cluster parameter group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> description;

  /// The family of the DB cluster parameter group.
  late final pulumi.Output<String> family;

  /// The name of the DB parameter.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// A list of DB parameters to apply. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via [`aws rds describe-db-cluster-parameters`](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-cluster-parameters.html) after initial creation of the group.
  late final pulumi.Output<List<ClusterParameterGroupParameterRds>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ClusterParameterGroupRds(
    String name, {
    ClusterParameterGroupRdsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterParameterGroup:ClusterParameterGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.parameters =
        registerOutput<List<ClusterParameterGroupParameterRds>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
