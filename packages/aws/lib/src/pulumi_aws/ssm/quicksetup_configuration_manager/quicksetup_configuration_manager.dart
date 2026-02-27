import 'package:pulumi/pulumi.dart';
import '../quicksetup_configuration_manager_configuration_definition/quicksetup_configuration_manager_configuration_definition.dart';
import '../quicksetup_configuration_manager_status_summary/quicksetup_configuration_manager_status_summary.dart';
import '../quicksetup_configuration_manager_timeouts/quicksetup_configuration_manager_timeouts.dart';
import 'quicksetup_configuration_manager_args.dart';

/// Resource for managing an AWS SSM Quick Setup Configuration Manager.
///
/// ## Example Usage
///
/// ### Patch Policy Configuration Type
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSM Quick Setup Configuration Manager using the `manager_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/quicksetupConfigurationManager:QuicksetupConfigurationManager example arn:aws:ssm-quicksetup:us-east-1:012345678901:configuration-manager/abcd-1234
/// ```
class QuicksetupConfigurationManager extends CustomResource {
  /// Definition of the Quick Setup configuration that the configuration manager deploys. See `configuration_definition` below.
  late final Output<QuicksetupConfigurationManagerConfigurationDefinition>
      configurationDefinition;

  /// Description of the configuration manager.
  late final Output<String> description;

  /// ARN of the Configuration Manager.
  late final Output<String> managerArn;

  /// Configuration manager name.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A summary of the state of the configuration manager. This includes deployment statuses, association statuses, drift statuses, health checks, and more. See `status_summaries` below.
  late final Output<List<QuicksetupConfigurationManagerStatusSummary>>
      statusSummaries;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<QuicksetupConfigurationManagerTimeouts?> timeouts;

  QuicksetupConfigurationManager(
    String name, {
    QuicksetupConfigurationManagerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/quicksetupConfigurationManager:QuicksetupConfigurationManager',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configurationDefinition =
        registerOutput<QuicksetupConfigurationManagerConfigurationDefinition>(
            'configurationDefinition');
    this.description = registerOutput<String>('description');
    this.managerArn = registerOutput<String>('managerArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.statusSummaries =
        registerOutput<List<QuicksetupConfigurationManagerStatusSummary>>(
            'statusSummaries');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<QuicksetupConfigurationManagerTimeouts?>('timeouts');
  }
}
