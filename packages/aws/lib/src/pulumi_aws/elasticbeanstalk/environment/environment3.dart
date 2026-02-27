import 'package:pulumi/pulumi.dart';
import '../environment_all_setting/environment_all_setting.dart';
import '../environment_setting/environment_setting.dart';
import 'environment_args3.dart';

/// Provides an Elastic Beanstalk Environment Resource. Elastic Beanstalk allows
/// you to deploy and manage applications in the AWS cloud without worrying about
/// the infrastructure that runs those applications.
///
/// Environments are often things such as `development`, `integration`, or
/// `production`.
///
/// ## Example Usage
///
///
///
/// ## Option Settings
///
/// Some options can be stack-specific, check [AWS Docs](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options-general.html)
/// for supported options and examples.
///
/// The `setting` and `all_settings` mappings support the following format:
///
/// * `namespace` - (Required) Unique namespace identifying the option's associated AWS resource
/// * `name` - (Required) Name of the configuration option
/// * `value` - (Required) Value for the configuration option
/// * `resource` - (Optional) resource name for [scheduled action](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options-general.html#command-options-general-autoscalingscheduledaction)
///
/// ### Example With Options
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Elastic Beanstalk Environments using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticbeanstalk/environment:Environment prodenv e-rpqsewtp2j
/// ```
class Environment3 extends CustomResource {
  /// List of all option settings configured in this Environment. These
  /// are a combination of default settings and their overrides from `setting` in
  /// the configuration.
  late final Output<List<EnvironmentAllSetting>> allSettings;

  /// Name of the application that contains the version
  /// to be deployed
  late final Output<String> application;
  late final Output<String> arn;

  /// The autoscaling groups used by this Environment.
  late final Output<List<String>> autoscalingGroups;

  /// Fully qualified DNS name for this Environment.
  late final Output<String> cname;

  /// Prefix to use for the fully qualified DNS name of
  /// the Environment.
  late final Output<String> cnamePrefix;

  /// Short description of the Environment
  late final Output<String?> description;

  /// The URL to the Load Balancer for this Environment
  late final Output<String> endpointUrl;

  /// Instances used by this Environment.
  late final Output<List<String>> instances;

  /// Launch configurations in use by this Environment.
  late final Output<List<String>> launchConfigurations;

  /// Elastic load balancers in use by this Environment.
  late final Output<List<String>> loadBalancers;

  /// A unique name for this Environment. This name is used
  /// in the application URL
  late final Output<String> name;

  /// The [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the Elastic Beanstalk [Platform](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-platformarn)
  /// to use in deployment
  late final Output<String> platformArn;

  /// The time between polling the AWS API to
  /// check if changes have been applied. Use this to adjust the rate of API calls
  /// for any `create` or `update` action. Minimum `10s`, maximum `180s`. Omit this to
  /// use the default behavior, which is an exponential backoff
  late final Output<String?> pollInterval;

  /// SQS queues in use by this Environment.
  late final Output<List<String>> queues;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Option settings to configure the new Environment. These
  /// override specific values that are set as defaults. The format is detailed
  /// below in Option Settings
  late final Output<List<EnvironmentSetting>?> settings;

  /// A solution stack to base your environment
  /// off of. Example stacks can be found in the [Amazon API documentation](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html)
  late final Output<String> solutionStackName;

  /// A set of tags to apply to the Environment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The name of the Elastic Beanstalk Configuration
  /// template to use in deployment
  late final Output<String?> templateName;

  /// Elastic Beanstalk Environment tier. Valid values are `Worker`
  /// or `WebServer`. If tier is left blank `WebServer` will be used.
  late final Output<String?> tier;

  /// Autoscaling triggers in use by this Environment.
  late final Output<List<String>> triggers;

  /// The name of the Elastic Beanstalk Application Version
  /// to use in deployment.
  late final Output<String> version;

  /// The maximum
  /// [duration](https://golang.org/pkg/time/#ParseDuration) that this provider should
  /// wait for an Elastic Beanstalk Environment to be in a ready state before timing
  /// out.
  late final Output<String?> waitForReadyTimeout;

  Environment3(
    String name, {
    EnvironmentArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticbeanstalk/environment:Environment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allSettings =
        registerOutput<List<EnvironmentAllSetting>>('allSettings');
    this.application = registerOutput<String>('application');
    this.arn = registerOutput<String>('arn');
    this.autoscalingGroups = registerOutput<List<String>>('autoscalingGroups');
    this.cname = registerOutput<String>('cname');
    this.cnamePrefix = registerOutput<String>('cnamePrefix');
    this.description = registerOutput<String?>('description');
    this.endpointUrl = registerOutput<String>('endpointUrl');
    this.instances = registerOutput<List<String>>('instances');
    this.launchConfigurations =
        registerOutput<List<String>>('launchConfigurations');
    this.loadBalancers = registerOutput<List<String>>('loadBalancers');
    this.name = registerOutput<String>('name');
    this.platformArn = registerOutput<String>('platformArn');
    this.pollInterval = registerOutput<String?>('pollInterval');
    this.queues = registerOutput<List<String>>('queues');
    this.region = registerOutput<String>('region');
    this.settings = registerOutput<List<EnvironmentSetting>?>('settings');
    this.solutionStackName = registerOutput<String>('solutionStackName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.templateName = registerOutput<String?>('templateName');
    this.tier = registerOutput<String?>('tier');
    this.triggers = registerOutput<List<String>>('triggers');
    this.version = registerOutput<String>('version');
    this.waitForReadyTimeout = registerOutput<String?>('waitForReadyTimeout');
  }
}
