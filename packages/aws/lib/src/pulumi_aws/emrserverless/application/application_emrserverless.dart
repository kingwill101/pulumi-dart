import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_auto_start_configuration/application_auto_start_configuration.dart';
import '../application_auto_stop_configuration/application_auto_stop_configuration.dart';
import '../application_image_configuration/application_image_configuration.dart';
import '../application_initial_capacity/application_initial_capacity.dart';
import '../application_interactive_configuration/application_interactive_configuration.dart';
import '../application_maximum_capacity/application_maximum_capacity.dart';
import '../application_monitoring_configuration/application_monitoring_configuration.dart';
import '../application_network_configuration/application_network_configuration.dart';
import '../application_runtime_configuration/application_runtime_configuration.dart';
import '../application_scheduler_configuration/application_scheduler_configuration.dart';
import 'application_emrserverless_args.dart';

/// Manages an EMR Serverless Application.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Initial Capacity Usage
///
///
///
/// ### Maximum Capacity Usage
///
///
///
/// ### Monitoring Configuration Usage
///
///
///
/// ### Runtime Configuration Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR Serverless applications using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:emrserverless/application:Application example id
/// ```
class ApplicationEmrserverless extends pulumi.CustomResource {
  /// The CPU architecture of an application. Valid values are `ARM64` or `X86_64`. Default value is `X86_64`.
  late final pulumi.Output<String?> architecture;

  /// ARN of the cluster.
  late final pulumi.Output<String> arn;

  /// The configuration for an application to automatically start on job submission.
  late final pulumi.Output<ApplicationAutoStartConfiguration>
      autoStartConfiguration;

  /// The configuration for an application to automatically stop after a certain amount of time being idle.
  late final pulumi.Output<ApplicationAutoStopConfiguration>
      autoStopConfiguration;

  /// The image configuration applied to all worker types.
  late final pulumi.Output<ApplicationImageConfiguration> imageConfiguration;

  /// The capacity to initialize when the application is created.
  late final pulumi.Output<List<ApplicationInitialCapacity>?> initialCapacities;

  /// Enables the interactive use cases to use when running an application.
  late final pulumi.Output<ApplicationInteractiveConfiguration>
      interactiveConfiguration;

  /// The maximum capacity to allocate when the application is created. This is cumulative across all workers at any given point in time, not just when an application is created. No new resources will be created once any one of the defined limits is hit.
  late final pulumi.Output<ApplicationMaximumCapacity> maximumCapacity;

  /// The configuration setting for monitoring.
  late final pulumi.Output<ApplicationMonitoringConfiguration?>
      monitoringConfiguration;

  /// The name of the application.
  late final pulumi.Output<String> name;

  /// The network configuration for customer VPC connectivity.
  late final pulumi.Output<ApplicationNetworkConfiguration?>
      networkConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The EMR release version associated with the application.
  late final pulumi.Output<String> releaseLabel;

  /// A configuration specification to be used when provisioning an application. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file.
  late final pulumi.Output<List<ApplicationRuntimeConfiguration>?>
      runtimeConfigurations;

  /// Scheduler configuration for batch and streaming jobs running on this application. Supported with release labels `emr-7.0.0` and above. See scheduler_configuration Arguments below.
  late final pulumi.Output<ApplicationSchedulerConfiguration?>
      schedulerConfiguration;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The type of application you want to start, such as `spark` or `hive`.
  late final pulumi.Output<String> type;

  ApplicationEmrserverless(
    String name, {
    ApplicationEmrserverlessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emrserverless/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.architecture = registerOutput<String?>('architecture');
    this.arn = registerOutput<String>('arn');
    this.autoStartConfiguration =
        registerOutput<ApplicationAutoStartConfiguration>(
            'autoStartConfiguration');
    this.autoStopConfiguration =
        registerOutput<ApplicationAutoStopConfiguration>(
            'autoStopConfiguration');
    this.imageConfiguration =
        registerOutput<ApplicationImageConfiguration>('imageConfiguration');
    this.initialCapacities =
        registerOutput<List<ApplicationInitialCapacity>?>('initialCapacities');
    this.interactiveConfiguration =
        registerOutput<ApplicationInteractiveConfiguration>(
            'interactiveConfiguration');
    this.maximumCapacity =
        registerOutput<ApplicationMaximumCapacity>('maximumCapacity');
    this.monitoringConfiguration =
        registerOutput<ApplicationMonitoringConfiguration?>(
            'monitoringConfiguration');
    this.name = registerOutput<String>('name');
    this.networkConfiguration =
        registerOutput<ApplicationNetworkConfiguration?>(
            'networkConfiguration');
    this.region = registerOutput<String>('region');
    this.releaseLabel = registerOutput<String>('releaseLabel');
    this.runtimeConfigurations =
        registerOutput<List<ApplicationRuntimeConfiguration>?>(
            'runtimeConfigurations');
    this.schedulerConfiguration =
        registerOutput<ApplicationSchedulerConfiguration?>(
            'schedulerConfiguration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
