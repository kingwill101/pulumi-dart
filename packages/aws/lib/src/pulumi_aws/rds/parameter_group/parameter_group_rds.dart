import 'package:pulumi/pulumi.dart' as pulumi;
import '../parameter_group_parameter/parameter_group_parameter_rds.dart';
import 'parameter_group_rds_args.dart';

/// Provides an RDS DB parameter group resource. Documentation of the available parameters for various RDS engines can be found at:
///
/// * [Aurora MySQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Reference.html)
/// * [Aurora PostgreSQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraPostgreSQL.Reference.html)
/// * [MariaDB Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.MariaDB.Parameters.html)
/// * [Oracle Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ModifyInstance.Oracle.html#USER_ModifyInstance.Oracle.sqlnet)
/// * [PostgreSQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.PostgreSQL.CommonDBATasks.html#Appendix.PostgreSQL.CommonDBATasks.Parameters)
///
/// > **Hands-on:** For an example of the `aws.rds.ParameterGroup` in use, follow the Manage AWS RDS Instances tutorial on HashiCorp Learn.
///
/// > **NOTE:** If you encounter a pulumi preview showing parameter changes after an apply (_i.e._, _perpetual diffs_), see the Problematic Plan Changes example below for additional guidance.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Example of Problematic Configuration
///
/// The following Terraform configuration includes a parameter that overlaps with an AWS default parameter, using the same `name` (`default_password_lifetime`) and `value` (`0`). However:
///
/// - AWS sets the default `apply_method` for this parameter to `pending-reboot`.
/// - The AWS Provider defaults all parameters' `apply_method` to `immediate`.
///
/// This configuration attempts to change _only_ the `apply_method` from `pending-reboot` to `immediate`, which is not allowed by AWS.
///
///
///
/// ### Solution 1: Remove the Default Parameter
///
/// Exclude the default parameter, such as `default_password_lifetime` in this example, from your configuration entirely. This ensures Terraform does not attempt to modify the parameter, leaving it with AWS's default settings.
///
///
///
/// ### Solution 2: Modify the Parameter's Value Also
///
/// Change the `value` of the parameter along with its `apply_method`. Since the AWS default `value` is `0`, selecting any other valid value (_e.g._, `1`) will resolve the issue.
///
///
///
/// ### Solution 3: Align `apply_method` with AWS Defaults
///
/// Explicitly set the `apply_method` to match AWS's default value for this parameter (`pending-reboot`). This prevents conflicts between Terraform's default (`immediate`) and AWS's default where the `value` is not changing.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DB Parameter groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/parameterGroup:ParameterGroup rds_pg rds-pg
/// ```
class ParameterGroupRds extends pulumi.CustomResource {
  /// The ARN of the db parameter group.
  late final pulumi.Output<String> arn;

  /// The description of the DB parameter group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> description;

  /// The family of the DB parameter group.
  late final pulumi.Output<String> family;

  /// The name of the DB parameter group. If omitted, this provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// The DB parameters to apply. See `parameter` Block below for more details. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via [`aws rds describe-db-parameters`](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-parameters.html) after initial creation of the group.
  late final pulumi.Output<List<ParameterGroupParameterRds>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Set to true if you do not wish the parameter group to be deleted at destroy time, and instead just remove the parameter group from the Terraform state.
  late final pulumi.Output<bool?> skipDestroy;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ParameterGroupRds(
    String name, {
    ParameterGroupRdsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/parameterGroup:ParameterGroup',
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
        registerOutput<List<ParameterGroupParameterRds>?>('parameters');
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
