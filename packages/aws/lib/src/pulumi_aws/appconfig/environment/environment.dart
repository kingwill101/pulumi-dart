import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_monitor/environment_monitor.dart';
import 'environment_args.dart';

/// Provides an AppConfig Environment resource for an `aws.appconfig.Application` resource. One or more environments can be defined for an application.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Environments using the environment ID and application ID separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/environment:Environment example 71abcde:11xxxxx
/// ```
class Environment extends pulumi.CustomResource {
  /// AppConfig application ID. Must be between 4 and 7 characters in length.
  late final pulumi.Output<String> applicationId;

  /// ARN of the AppConfig Environment.
  late final pulumi.Output<String> arn;

  /// Description of the environment. Can be at most 1024 characters.
  late final pulumi.Output<String> description;

  /// AppConfig environment ID.
  late final pulumi.Output<String> environmentId;

  /// Set of Amazon CloudWatch alarms to monitor during the deployment process. Maximum of 5. See Monitor below for more details.
  late final pulumi.Output<List<EnvironmentMonitor>?> monitors;

  /// Name for the environment. Must be between 1 and 64 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// State of the environment. Possible values are `READY_FOR_DEPLOYMENT`, `DEPLOYING`, `ROLLING_BACK`
  /// or `ROLLED_BACK`.
  late final pulumi.Output<String> state;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.monitors = registerOutput<List<EnvironmentMonitor>?>('monitors');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
