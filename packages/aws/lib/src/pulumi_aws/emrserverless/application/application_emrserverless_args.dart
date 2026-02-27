// ignore_for_file: unused_element, unnecessary_cast

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

/// The set of arguments for Application.
class ApplicationEmrserverlessArgs {
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
  final pulumi.Input<ApplicationInteractiveConfiguration>?
      interactiveConfiguration;

  /// The maximum capacity to allocate when the application is created. This is cumulative across all workers at any given point in time, not just when an application is created. No new resources will be created once any one of the defined limits is hit.
  final pulumi.Input<ApplicationMaximumCapacity>? maximumCapacity;

  /// The configuration setting for monitoring.
  final pulumi.Input<ApplicationMonitoringConfiguration>?
      monitoringConfiguration;

  /// The name of the application.
  final pulumi.Input<String>? name;

  /// The network configuration for customer VPC connectivity.
  final pulumi.Input<ApplicationNetworkConfiguration>? networkConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The EMR release version associated with the application.
  final pulumi.Input<String> releaseLabel;

  /// A configuration specification to be used when provisioning an application. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file.
  final pulumi.Input<List<ApplicationRuntimeConfiguration>>?
      runtimeConfigurations;

  /// Scheduler configuration for batch and streaming jobs running on this application. Supported with release labels `emr-7.0.0` and above. See scheduler_configuration Arguments below.
  final pulumi.Input<ApplicationSchedulerConfiguration>? schedulerConfiguration;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The type of application you want to start, such as `spark` or `hive`.
  final pulumi.Input<String> type;

  ApplicationEmrserverlessArgs({
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
    final map = <String, dynamic>{};
    final architectureValue = architecture;
    if (architectureValue != null) {
      map['architecture'] = architectureValue;
    }
    final autoStartConfigurationValue = autoStartConfiguration;
    if (autoStartConfigurationValue != null) {
      map['autoStartConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ApplicationAutoStartConfiguration, Map<String, dynamic>>(
          autoStartConfigurationValue, (value) => value.toMap());
    }
    final autoStopConfigurationValue = autoStopConfiguration;
    if (autoStopConfigurationValue != null) {
      map['autoStopConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ApplicationAutoStopConfiguration, Map<String, dynamic>>(
          autoStopConfigurationValue, (value) => value.toMap());
    }
    final imageConfigurationValue = imageConfiguration;
    if (imageConfigurationValue != null) {
      map['imageConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ApplicationImageConfiguration, Map<String, dynamic>>(
          imageConfigurationValue, (value) => value.toMap());
    }
    final initialCapacitiesValue = initialCapacities;
    if (initialCapacitiesValue != null) {
      map['initialCapacities'] = pulumi.Input.mapOptionalInputValue<
              List<ApplicationInitialCapacity>, List<Map<String, dynamic>>>(
          initialCapacitiesValue,
          (value) => pulumi.Input.encodeList<ApplicationInitialCapacity,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final interactiveConfigurationValue = interactiveConfiguration;
    if (interactiveConfigurationValue != null) {
      map['interactiveConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ApplicationInteractiveConfiguration, Map<String, dynamic>>(
          interactiveConfigurationValue, (value) => value.toMap());
    }
    final maximumCapacityValue = maximumCapacity;
    if (maximumCapacityValue != null) {
      map['maximumCapacity'] = pulumi.Input.mapOptionalInputValue<
          ApplicationMaximumCapacity,
          Map<String, dynamic>>(maximumCapacityValue, (value) => value.toMap());
    }
    final monitoringConfigurationValue = monitoringConfiguration;
    if (monitoringConfigurationValue != null) {
      map['monitoringConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ApplicationMonitoringConfiguration, Map<String, dynamic>>(
          monitoringConfigurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigurationValue = networkConfiguration;
    if (networkConfigurationValue != null) {
      map['networkConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ApplicationNetworkConfiguration, Map<String, dynamic>>(
          networkConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['releaseLabel'] = releaseLabel;
    final runtimeConfigurationsValue = runtimeConfigurations;
    if (runtimeConfigurationsValue != null) {
      map['runtimeConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<ApplicationRuntimeConfiguration>,
              List<Map<String, dynamic>>>(
          runtimeConfigurationsValue,
          (value) => pulumi.Input.encodeList<ApplicationRuntimeConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final schedulerConfigurationValue = schedulerConfiguration;
    if (schedulerConfigurationValue != null) {
      map['schedulerConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ApplicationSchedulerConfiguration, Map<String, dynamic>>(
          schedulerConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    return map;
  }

  factory ApplicationEmrserverlessArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationEmrserverlessArgs(
      architecture: pulumi.Input.asOptionalInput<String>(map['architecture']),
      autoStartConfiguration:
          pulumi.Input.asOptionalInput<ApplicationAutoStartConfiguration>(
              map['autoStartConfiguration']),
      autoStopConfiguration:
          pulumi.Input.asOptionalInput<ApplicationAutoStopConfiguration>(
              map['autoStopConfiguration']),
      imageConfiguration:
          pulumi.Input.asOptionalInput<ApplicationImageConfiguration>(
              map['imageConfiguration']),
      initialCapacities:
          pulumi.Input.asOptionalInput<List<ApplicationInitialCapacity>>(
              map['initialCapacities']),
      interactiveConfiguration:
          pulumi.Input.asOptionalInput<ApplicationInteractiveConfiguration>(
              map['interactiveConfiguration']),
      maximumCapacity: pulumi.Input.asOptionalInput<ApplicationMaximumCapacity>(
          map['maximumCapacity']),
      monitoringConfiguration:
          pulumi.Input.asOptionalInput<ApplicationMonitoringConfiguration>(
              map['monitoringConfiguration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkConfiguration:
          pulumi.Input.asOptionalInput<ApplicationNetworkConfiguration>(
              map['networkConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      releaseLabel: pulumi.Input.asInput<String>(map['releaseLabel']),
      runtimeConfigurations:
          pulumi.Input.asOptionalInput<List<ApplicationRuntimeConfiguration>>(
              map['runtimeConfigurations']),
      schedulerConfiguration:
          pulumi.Input.asOptionalInput<ApplicationSchedulerConfiguration>(
              map['schedulerConfiguration']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
