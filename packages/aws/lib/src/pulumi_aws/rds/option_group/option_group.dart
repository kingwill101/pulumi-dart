import 'package:pulumi/pulumi.dart';
import '../option_group_option/option_group_option.dart';
import 'option_group_args.dart';

/// Provides an RDS DB option group resource. Documentation of the available options for various RDS engines can be found at:
///
/// * [MariaDB Options](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.MariaDB.Options.html)
/// * [Microsoft SQL Server Options](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.SQLServer.Options.html)
/// * [MySQL Options](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.MySQL.Options.html)
/// * [Oracle Options](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.Options.html)
///
/// ## Example Usage
///
///
///
/// > **Note:** Any modifications to the `aws.rds.OptionGroup` are set to happen immediately as we default to applying immediately.
///
/// > **WARNING:** You can perform a destroy on a `aws.rds.OptionGroup`, as long as it is not associated with any Amazon RDS resource. An option group can be associated with a DB instance, a manual DB snapshot, or an automated DB snapshot.
///
/// If you try to delete an option group that is associated with an Amazon RDS resource, an error similar to the following is returned:
///
/// > An error occurred (InvalidOptionGroupStateFault) when calling the DeleteOptionGroup operation: The option group 'optionGroupName' cannot be deleted because it is in use.
///
/// More information about this can be found [here](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithOptionGroups.html#USER_WorkingWithOptionGroups.Delete).
///
/// ## Import
///
/// Using `pulumi import`, import DB option groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/optionGroup:OptionGroup example mysql-option-group
/// ```
class OptionGroup extends CustomResource {
  /// ARN of the DB option group.
  late final Output<String> arn;

  /// Specifies the name of the engine that this option group should be associated with.
  late final Output<String> engineName;

  /// Specifies the major version of the engine that this option group should be associated with.
  late final Output<String> majorEngineVersion;

  /// Name of the option group. If omitted, the provider will assign a random, unique name. Must be lowercase, to match as it is stored in AWS.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. Must be lowercase, to match as it is stored in AWS.
  late final Output<String> namePrefix;

  /// Description of the option group. Defaults to "Managed by Pulumi".
  late final Output<String> optionGroupDescription;

  /// The options to apply. See `option` Block below for more details.
  late final Output<List<OptionGroupOption>?> options;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set to true if you do not wish the option group to be deleted at destroy time, and instead just remove the option group from the Pulumi state.
  late final Output<bool?> skipDestroy;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  OptionGroup(
    String name, {
    OptionGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/optionGroup:OptionGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.engineName = registerOutput<String>('engineName');
    this.majorEngineVersion = registerOutput<String>('majorEngineVersion');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.optionGroupDescription =
        registerOutput<String>('optionGroupDescription');
    this.options = registerOutput<List<OptionGroupOption>?>('options');
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
