import 'package:pulumi/pulumi.dart' as pulumi;
import '../configuration_template_setting/configuration_template_setting.dart';
import 'configuration_template_args.dart';

/// Provides an Elastic Beanstalk Configuration Template, which are associated with
/// a specific application and are used to deploy different versions of the
/// application with the same configuration settings.
///
/// ## Example Usage
///
///
///
/// ## Option Settings
///
/// The `setting` field supports the following format:
///
/// * `namespace` - (Required) Unique namespace identifying the option's associated AWS resource
/// * `name` - (Required) Name of the configuration option
/// * `value` - (Required) Value for the configuration option
/// * `resource` - (Optional) resource name for [scheduled action](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options-general.html#command-options-general-autoscalingscheduledaction)
class ConfigurationTemplate extends pulumi.CustomResource {
  /// name of the application to associate with this configuration template
  late final pulumi.Output<String> application;

  /// Short description of the Template
  late final pulumi.Output<String?> description;

  /// The ID of the environment used with this configuration template
  late final pulumi.Output<String?> environmentId;

  /// A unique name for this Template.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Option settings to configure the new Environment. These
  /// override specific values that are set as defaults. The format is detailed
  /// below in Option Settings
  late final pulumi.Output<List<ConfigurationTemplateSetting>> settings;

  /// A solution stack to base your Template
  /// off of. Example stacks can be found in the [Amazon API documentation][1]
  late final pulumi.Output<String?> solutionStackName;

  ConfigurationTemplate(
    String name, {
    ConfigurationTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticbeanstalk/configurationTemplate:ConfigurationTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.application = registerOutput<String>('application');
    this.description = registerOutput<String?>('description');
    this.environmentId = registerOutput<String?>('environmentId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.settings =
        registerOutput<List<ConfigurationTemplateSetting>>('settings');
    this.solutionStackName = registerOutput<String?>('solutionStackName');
  }
}
