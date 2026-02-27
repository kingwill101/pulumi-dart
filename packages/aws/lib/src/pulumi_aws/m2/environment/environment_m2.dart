import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_high_availability_config/environment_high_availability_config.dart';
import '../environment_storage_configuration/environment_storage_configuration.dart';
import '../environment_timeouts/environment_timeouts_m2.dart';
import 'environment_m2_args.dart';

/// Resource for managing an [AWS Mainframe Modernization Environment](https://docs.aws.amazon.com/m2/latest/userguide/environments-m2.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### High Availability
///
///
///
/// ### EFS Filesystem
///
///
///
/// ### FSX Filesystem
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Mainframe Modernization Environment using the `01234567890abcdef012345678`. For example:
///
/// ```sh
/// $ pulumi import aws:m2/environment:Environment example 01234567890abcdef012345678
/// ```
class EnvironmentM2 extends pulumi.CustomResource {
  late final pulumi.Output<bool?> applyChangesDuringMaintenanceWindow;

  /// ARN of the Environment.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String?> description;

  /// Engine type must be `microfocus` or `bluage`.
  late final pulumi.Output<String> engineType;

  /// The specific version of the engine for the Environment.
  late final pulumi.Output<String> engineVersion;

  /// The id of the Environment.
  late final pulumi.Output<String> environmentId;

  /// Force update the environment even if applications are running.
  late final pulumi.Output<bool?> forceUpdate;
  late final pulumi.Output<EnvironmentHighAvailabilityConfig?>
      highAvailabilityConfig;

  /// M2 Instance Type.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> instanceType;

  /// ARN of the KMS key to use for the Environment.
  late final pulumi.Output<String?> kmsKeyId;

  /// ARN of the load balancer created by the Environment.
  late final pulumi.Output<String> loadBalancerArn;

  /// Name of the runtime environment. Must be unique within the account.
  late final pulumi.Output<String> name;

  /// Configures the maintenance window that you want for the runtime environment. The maintenance window must have the format `ddd:hh24:mi-ddd:hh24:mi` and must be less than 24 hours. If not provided a random value will be used.
  late final pulumi.Output<String> preferredMaintenanceWindow;

  /// Allow applications deployed to this environment to be publicly accessible.
  late final pulumi.Output<bool> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of security group ids.
  late final pulumi.Output<List<String>> securityGroupIds;
  late final pulumi.Output<EnvironmentStorageConfiguration?>
      storageConfiguration;

  /// List of subnet ids to deploy environment to.
  late final pulumi.Output<List<String>> subnetIds;

  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<EnvironmentTimeoutsM2?> timeouts;

  EnvironmentM2(
    String name, {
    EnvironmentM2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:m2/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyChangesDuringMaintenanceWindow =
        registerOutput<bool?>('applyChangesDuringMaintenanceWindow');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.engineType = registerOutput<String>('engineType');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.environmentId = registerOutput<String>('environmentId');
    this.forceUpdate = registerOutput<bool?>('forceUpdate');
    this.highAvailabilityConfig =
        registerOutput<EnvironmentHighAvailabilityConfig?>(
            'highAvailabilityConfig');
    this.instanceType = registerOutput<String>('instanceType');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.loadBalancerArn = registerOutput<String>('loadBalancerArn');
    this.name = registerOutput<String>('name');
    this.preferredMaintenanceWindow =
        registerOutput<String>('preferredMaintenanceWindow');
    this.publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.storageConfiguration =
        registerOutput<EnvironmentStorageConfiguration?>(
            'storageConfiguration');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<EnvironmentTimeoutsM2?>('timeouts');
  }
}
