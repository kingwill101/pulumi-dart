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

/// {@template pulumi_emrserverless_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_emrserverless_application_application_args_doc}
class ApplicationArgs {
  /// The CPU architecture of an application. Valid values are `ARM64` or `X86_64`. Default value is `X86_64`.
  final pulumi.Input<String>? architecture;
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
  final pulumi.Input<String> releaseLabel;
  /// A configuration specification to be used when provisioning an application. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file.
  final pulumi.Input<List<ApplicationRuntimeConfiguration>>? runtimeConfigurations;
  /// Scheduler configuration for batch and streaming jobs running on this application. Supported with release labels `emr-7.0.0` and above. See scheduler_configuration Arguments below.
  final pulumi.Input<ApplicationSchedulerConfiguration>? schedulerConfiguration;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of application you want to start, such as `spark` or `hive`.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationArgs].
  /// [architecture] The CPU architecture of an application. Valid values are `ARM64` or `X86_64`. Default value is `X86_64`.
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
  /// [type] The type of application you want to start, such as `spark` or `hive`.
  ApplicationArgs({
    this.architecture,
    this.autoStartConfiguration,
    this.autoStopConfiguration,
    this.imageConfiguration,
    this.initialCapacities,
    this.interactiveConfiguration,
    this.maximumCapacity,
    this.monitoringConfiguration,
    this.name,
    this.networkConfiguration,
    this.region,
    required this.releaseLabel,
    this.runtimeConfigurations,
    this.schedulerConfiguration,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
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
      'releaseLabel': releaseLabel,
      'runtimeConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationRuntimeConfiguration>, List<Map<String, dynamic>>>(runtimeConfigurations, (value) => pulumi.Input.encodeList<ApplicationRuntimeConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedulerConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationSchedulerConfiguration, Map<String, dynamic>>(schedulerConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      architecture: map['architecture'] == null ? null : ((map['architecture'] as String).input()).input(),
      autoStartConfiguration: map['autoStartConfiguration'] == null ? null : ((ApplicationAutoStartConfiguration.fromMap((map['autoStartConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      autoStopConfiguration: map['autoStopConfiguration'] == null ? null : ((ApplicationAutoStopConfiguration.fromMap((map['autoStopConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      imageConfiguration: map['imageConfiguration'] == null ? null : ((ApplicationImageConfiguration.fromMap((map['imageConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      initialCapacities: map['initialCapacities'] == null ? null : ((pulumi.Input.decodeList<ApplicationInitialCapacity>(map['initialCapacities']!, (value) => ApplicationInitialCapacity.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      interactiveConfiguration: map['interactiveConfiguration'] == null ? null : ((ApplicationInteractiveConfiguration.fromMap((map['interactiveConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      maximumCapacity: map['maximumCapacity'] == null ? null : ((ApplicationMaximumCapacity.fromMap((map['maximumCapacity']! as Map).cast<String, dynamic>())).input()).input(),
      monitoringConfiguration: map['monitoringConfiguration'] == null ? null : ((ApplicationMonitoringConfiguration.fromMap((map['monitoringConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      networkConfiguration: map['networkConfiguration'] == null ? null : ((ApplicationNetworkConfiguration.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      releaseLabel: (map['releaseLabel'] as String).input(),
      runtimeConfigurations: map['runtimeConfigurations'] == null ? null : ((pulumi.Input.decodeList<ApplicationRuntimeConfiguration>(map['runtimeConfigurations']!, (value) => ApplicationRuntimeConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      schedulerConfiguration: map['schedulerConfiguration'] == null ? null : ((ApplicationSchedulerConfiguration.fromMap((map['schedulerConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

