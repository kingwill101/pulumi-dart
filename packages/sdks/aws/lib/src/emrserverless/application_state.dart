// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_auto_start_configuration.dart';
import 'application_auto_stop_configuration.dart';
import 'application_image_configuration.dart';
import 'application_initial_capacity.dart';
import 'application_interactive_configuration.dart';
import 'application_maximum_capacity.dart';
import 'application_monitoring_configuration.dart';
import 'application_network_configuration.dart';
import 'application_runtime_configuration.dart';
import 'application_scheduler_configuration.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// The CPU architecture of an application. Valid values are `ARM64` or `X86_64`. Default value is `X86_64`.
  final pulumi.Input<String>? architecture;
  /// ARN of the cluster.
  final pulumi.Input<String>? arn;
  /// The configuration for an application to automatically start on job submission.
  final pulumi.Input<ApplicationAutoStartConfiguration>? autoStartConfiguration;
  /// The configuration for an application to automatically stop after a certain amount of time being idle.
  final pulumi.Input<ApplicationAutoStopConfiguration>? autoStopConfiguration;
  /// The image configuration applied to all worker types.
  final pulumi.Input<ApplicationImageConfiguration>? imageConfiguration;
  /// The capacity to initialize when the application is created.
  final pulumi.Input<List<ApplicationInitialCapacity>>? initialCapacities;
  /// Enables the interactive use cases to use when running an application.
  final pulumi.Input<ApplicationInteractiveConfiguration>? interactiveConfiguration;
  /// The maximum capacity to allocate when the application is created. This is cumulative across all workers at any given point in time, not just when an application is created. No new resources will be created once any one of the defined limits is hit.
  final pulumi.Input<ApplicationMaximumCapacity>? maximumCapacity;
  /// The configuration setting for monitoring.
  final pulumi.Input<ApplicationMonitoringConfiguration>? monitoringConfiguration;
  /// The name of the application.
  final pulumi.Input<String>? name;
  /// The network configuration for customer VPC connectivity.
  final pulumi.Input<ApplicationNetworkConfiguration>? networkConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The EMR release version associated with the application.
  final pulumi.Input<String>? releaseLabel;
  /// A configuration specification to be used when provisioning an application. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file.
  final pulumi.Input<List<ApplicationRuntimeConfiguration>>? runtimeConfigurations;
  /// Scheduler configuration for batch and streaming jobs running on this application. Supported with release labels `emr-7.0.0` and above. See scheduler_configuration Arguments below.
  final pulumi.Input<ApplicationSchedulerConfiguration>? schedulerConfiguration;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The type of application you want to start, such as `spark` or `hive`.
  final pulumi.Input<String>? type;

  /// Creates a new [ApplicationState].
  /// [architecture] The CPU architecture of an application. Valid values are `ARM64` or `X86_64`. Default value is `X86_64`.
  /// [arn] ARN of the cluster.
  /// [autoStartConfiguration] The configuration for an application to automatically start on job submission.
  /// [autoStopConfiguration] The configuration for an application to automatically stop after a certain amount of time being idle.
  /// [imageConfiguration] The image configuration applied to all worker types.
  /// [initialCapacities] The capacity to initialize when the application is created.
  /// [interactiveConfiguration] Enables the interactive use cases to use when running an application.
  /// [maximumCapacity] The maximum capacity to allocate when the application is created. This is cumulative across all workers at any given point in time, not just when an application is created. No new resources will be created once any one of the defined limits is hit.
  /// [monitoringConfiguration] The configuration setting for monitoring.
  /// [name] The name of the application.
  /// [networkConfiguration] The network configuration for customer VPC connectivity.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [releaseLabel] The EMR release version associated with the application.
  /// [runtimeConfigurations] A configuration specification to be used when provisioning an application. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file.
  /// [schedulerConfiguration] Scheduler configuration for batch and streaming jobs running on this application. Supported with release labels `emr-7.0.0` and above. See scheduler_configuration Arguments below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of application you want to start, such as `spark` or `hive`.
  ApplicationState({
    pulumi.Output<String>? architecture,
    pulumi.Output<String>? arn,
    pulumi.Output<ApplicationAutoStartConfiguration>? autoStartConfiguration,
    pulumi.Output<ApplicationAutoStopConfiguration>? autoStopConfiguration,
    pulumi.Output<ApplicationImageConfiguration>? imageConfiguration,
    pulumi.Output<List<ApplicationInitialCapacity>>? initialCapacities,
    pulumi.Output<ApplicationInteractiveConfiguration>? interactiveConfiguration,
    pulumi.Output<ApplicationMaximumCapacity>? maximumCapacity,
    pulumi.Output<ApplicationMonitoringConfiguration>? monitoringConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<ApplicationNetworkConfiguration>? networkConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<String>? releaseLabel,
    pulumi.Output<List<ApplicationRuntimeConfiguration>>? runtimeConfigurations,
    pulumi.Output<ApplicationSchedulerConfiguration>? schedulerConfiguration,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
  }) :
      architecture = pulumi.Input.asOptionalInput<String>(architecture),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoStartConfiguration = pulumi.Input.asOptionalInput<ApplicationAutoStartConfiguration>(autoStartConfiguration),
      autoStopConfiguration = pulumi.Input.asOptionalInput<ApplicationAutoStopConfiguration>(autoStopConfiguration),
      imageConfiguration = pulumi.Input.asOptionalInput<ApplicationImageConfiguration>(imageConfiguration),
      initialCapacities = pulumi.Input.asOptionalInput<List<ApplicationInitialCapacity>>(initialCapacities),
      interactiveConfiguration = pulumi.Input.asOptionalInput<ApplicationInteractiveConfiguration>(interactiveConfiguration),
      maximumCapacity = pulumi.Input.asOptionalInput<ApplicationMaximumCapacity>(maximumCapacity),
      monitoringConfiguration = pulumi.Input.asOptionalInput<ApplicationMonitoringConfiguration>(monitoringConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfiguration = pulumi.Input.asOptionalInput<ApplicationNetworkConfiguration>(networkConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      releaseLabel = pulumi.Input.asOptionalInput<String>(releaseLabel),
      runtimeConfigurations = pulumi.Input.asOptionalInput<List<ApplicationRuntimeConfiguration>>(runtimeConfigurations),
      schedulerConfiguration = pulumi.Input.asOptionalInput<ApplicationSchedulerConfiguration>(schedulerConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'arn': ?arn,
      'autoStartConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationAutoStartConfiguration, Map<String, dynamic>>(autoStartConfiguration, (value) => value.toMap()),
      'autoStopConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationAutoStopConfiguration, Map<String, dynamic>>(autoStopConfiguration, (value) => value.toMap()),
      'imageConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationImageConfiguration, Map<String, dynamic>>(imageConfiguration, (value) => value.toMap()),
      'initialCapacities': ?pulumi.Input.mapOptionalInputValue<List<ApplicationInitialCapacity>, List<Map<String, dynamic>>>(initialCapacities, (value) => pulumi.Input.encodeList<ApplicationInitialCapacity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interactiveConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationInteractiveConfiguration, Map<String, dynamic>>(interactiveConfiguration, (value) => value.toMap()),
      'maximumCapacity': ?pulumi.Input.mapOptionalInputValue<ApplicationMaximumCapacity, Map<String, dynamic>>(maximumCapacity, (value) => value.toMap()),
      'monitoringConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationMonitoringConfiguration, Map<String, dynamic>>(monitoringConfiguration, (value) => value.toMap()),
      'name': ?name,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'region': ?region,
      'releaseLabel': ?releaseLabel,
      'runtimeConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationRuntimeConfiguration>, List<Map<String, dynamic>>>(runtimeConfigurations, (value) => pulumi.Input.encodeList<ApplicationRuntimeConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedulerConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationSchedulerConfiguration, Map<String, dynamic>>(schedulerConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      architecture: map['architecture'] == null ? null : pulumi.Output.create<String>(map['architecture'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoStartConfiguration: map['autoStartConfiguration'] == null ? null : pulumi.Output.create<ApplicationAutoStartConfiguration>(ApplicationAutoStartConfiguration.fromMap((map['autoStartConfiguration'] as Map).cast<String, dynamic>())),
      autoStopConfiguration: map['autoStopConfiguration'] == null ? null : pulumi.Output.create<ApplicationAutoStopConfiguration>(ApplicationAutoStopConfiguration.fromMap((map['autoStopConfiguration'] as Map).cast<String, dynamic>())),
      imageConfiguration: map['imageConfiguration'] == null ? null : pulumi.Output.create<ApplicationImageConfiguration>(ApplicationImageConfiguration.fromMap((map['imageConfiguration'] as Map).cast<String, dynamic>())),
      initialCapacities: map['initialCapacities'] == null ? null : pulumi.Output.create<List<ApplicationInitialCapacity>>(pulumi.Input.decodeList<ApplicationInitialCapacity>(map['initialCapacities'], (value) => ApplicationInitialCapacity.fromMap((value as Map).cast<String, dynamic>()))),
      interactiveConfiguration: map['interactiveConfiguration'] == null ? null : pulumi.Output.create<ApplicationInteractiveConfiguration>(ApplicationInteractiveConfiguration.fromMap((map['interactiveConfiguration'] as Map).cast<String, dynamic>())),
      maximumCapacity: map['maximumCapacity'] == null ? null : pulumi.Output.create<ApplicationMaximumCapacity>(ApplicationMaximumCapacity.fromMap((map['maximumCapacity'] as Map).cast<String, dynamic>())),
      monitoringConfiguration: map['monitoringConfiguration'] == null ? null : pulumi.Output.create<ApplicationMonitoringConfiguration>(ApplicationMonitoringConfiguration.fromMap((map['monitoringConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfiguration: map['networkConfiguration'] == null ? null : pulumi.Output.create<ApplicationNetworkConfiguration>(ApplicationNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      releaseLabel: map['releaseLabel'] == null ? null : pulumi.Output.create<String>(map['releaseLabel'] as String),
      runtimeConfigurations: map['runtimeConfigurations'] == null ? null : pulumi.Output.create<List<ApplicationRuntimeConfiguration>>(pulumi.Input.decodeList<ApplicationRuntimeConfiguration>(map['runtimeConfigurations'], (value) => ApplicationRuntimeConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      schedulerConfiguration: map['schedulerConfiguration'] == null ? null : pulumi.Output.create<ApplicationSchedulerConfiguration>(ApplicationSchedulerConfiguration.fromMap((map['schedulerConfiguration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

