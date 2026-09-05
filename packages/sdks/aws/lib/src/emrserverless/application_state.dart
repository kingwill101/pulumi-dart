// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_auto_start_configuration.dart';
import 'application_auto_stop_configuration.dart';
import 'application_image_configuration.dart';
import 'application_initial_capacity.dart';
import 'application_interactive_configuration.dart';
import 'application_job_level_cost_allocation_configuration.dart';
import 'application_maximum_capacity.dart';
import 'application_monitoring_configuration.dart';
import 'application_network_configuration.dart';
import 'application_runtime_configuration.dart';
import 'application_scheduler_configuration.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// The CPU architecture of an application. Valid values are `ARM64` or `X86_64`. Default value is `X86_64`.
  final pulumi.Input<String?>? architecture;
  /// ARN of the cluster.
  final pulumi.Input<String?>? arn;
  /// The configuration for an application to automatically start on job submission.
  final pulumi.Input<ApplicationAutoStartConfiguration?>? autoStartConfiguration;
  /// The configuration for an application to automatically stop after a certain amount of time being idle.
  final pulumi.Input<ApplicationAutoStopConfiguration?>? autoStopConfiguration;
  /// The image configuration applied to all worker types.
  final pulumi.Input<ApplicationImageConfiguration?>? imageConfiguration;
  /// The capacity to initialize when the application is created.
  final pulumi.Input<List<ApplicationInitialCapacity>?>? initialCapacities;
  /// Enables the interactive use cases to use when running an application.
  final pulumi.Input<ApplicationInteractiveConfiguration?>? interactiveConfiguration;
  final pulumi.Input<ApplicationJobLevelCostAllocationConfiguration?>? jobLevelCostAllocationConfiguration;
  /// The maximum capacity to allocate when the application is created. This is cumulative across all workers at any given point in time, not just when an application is created. No new resources will be created once any one of the defined limits is hit.
  final pulumi.Input<ApplicationMaximumCapacity?>? maximumCapacity;
  /// The configuration setting for monitoring.
  final pulumi.Input<ApplicationMonitoringConfiguration?>? monitoringConfiguration;
  /// The name of the application.
  final pulumi.Input<String?>? name;
  /// The network configuration for customer VPC connectivity.
  final pulumi.Input<ApplicationNetworkConfiguration?>? networkConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The EMR release version associated with the application.
  final pulumi.Input<String?>? releaseLabel;
  /// A configuration specification to be used when provisioning an application. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file.
  final pulumi.Input<List<ApplicationRuntimeConfiguration>?>? runtimeConfigurations;
  /// Scheduler configuration for batch and streaming jobs running on this application. Supported with release labels `emr-7.0.0` and above. See schedulerConfiguration Arguments below.
  final pulumi.Input<ApplicationSchedulerConfiguration?>? schedulerConfiguration;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The type of application you want to start, such as `spark` or `hive`.
  final pulumi.Input<String?>? type;

  /// Creates a new [ApplicationState].
  /// [architecture] The CPU architecture of an application. Valid values are `ARM64` or `X86_64`. Default value is `X86_64`.
  /// [arn] ARN of the cluster.
  /// [autoStartConfiguration] The configuration for an application to automatically start on job submission.
  /// [autoStopConfiguration] The configuration for an application to automatically stop after a certain amount of time being idle.
  /// [imageConfiguration] The image configuration applied to all worker types.
  /// [initialCapacities] The capacity to initialize when the application is created.
  /// [interactiveConfiguration] Enables the interactive use cases to use when running an application.
  /// [jobLevelCostAllocationConfiguration] Optional.
  /// [maximumCapacity] The maximum capacity to allocate when the application is created. This is cumulative across all workers at any given point in time, not just when an application is created. No new resources will be created once any one of the defined limits is hit.
  /// [monitoringConfiguration] The configuration setting for monitoring.
  /// [name] The name of the application.
  /// [networkConfiguration] The network configuration for customer VPC connectivity.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [releaseLabel] The EMR release version associated with the application.
  /// [runtimeConfigurations] A configuration specification to be used when provisioning an application. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file.
  /// [schedulerConfiguration] Scheduler configuration for batch and streaming jobs running on this application. Supported with release labels `emr-7.0.0` and above. See schedulerConfiguration Arguments below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [type] The type of application you want to start, such as `spark` or `hive`.
  const ApplicationState({
    this.architecture,
    this.arn,
    this.autoStartConfiguration,
    this.autoStopConfiguration,
    this.imageConfiguration,
    this.initialCapacities,
    this.interactiveConfiguration,
    this.jobLevelCostAllocationConfiguration,
    this.maximumCapacity,
    this.monitoringConfiguration,
    this.name,
    this.networkConfiguration,
    this.region,
    this.releaseLabel,
    this.runtimeConfigurations,
    this.schedulerConfiguration,
    this.tags,
    this.tagsAll,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'arn': ?arn,
      'autoStartConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationAutoStartConfiguration, Map<String, dynamic>>(autoStartConfiguration, (value) => value.toMap()),
      'autoStopConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationAutoStopConfiguration, Map<String, dynamic>>(autoStopConfiguration, (value) => value.toMap()),
      'imageConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationImageConfiguration, Map<String, dynamic>>(imageConfiguration, (value) => value.toMap()),
      'initialCapacities': ?pulumi.Input.mapOptionalInputValue<List<ApplicationInitialCapacity>, List<Map<String, dynamic>>>(initialCapacities, (value) => pulumi.Input.encodeList<ApplicationInitialCapacity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interactiveConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationInteractiveConfiguration, Map<String, dynamic>>(interactiveConfiguration, (value) => value.toMap()),
      'jobLevelCostAllocationConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationJobLevelCostAllocationConfiguration, Map<String, dynamic>>(jobLevelCostAllocationConfiguration, (value) => value.toMap()),
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
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoStartConfiguration: (() { final guardedValue = map['autoStartConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationAutoStartConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoStopConfiguration: (() { final guardedValue = map['autoStopConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationAutoStopConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageConfiguration: (() { final guardedValue = map['imageConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationImageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialCapacities: (() { final guardedValue = map['initialCapacities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationInitialCapacity>(guardedValue, (value) => ApplicationInitialCapacity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      interactiveConfiguration: (() { final guardedValue = map['interactiveConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationInteractiveConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobLevelCostAllocationConfiguration: (() { final guardedValue = map['jobLevelCostAllocationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationJobLevelCostAllocationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumCapacity: (() { final guardedValue = map['maximumCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationMaximumCapacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringConfiguration: (() { final guardedValue = map['monitoringConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationMonitoringConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfiguration: (() { final guardedValue = map['networkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseLabel: (() { final guardedValue = map['releaseLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeConfigurations: (() { final guardedValue = map['runtimeConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationRuntimeConfiguration>(guardedValue, (value) => ApplicationRuntimeConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schedulerConfiguration: (() { final guardedValue = map['schedulerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationSchedulerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
