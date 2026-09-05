// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_association_container_monitoring_configuration.dart';
import 'container_association_timeouts.dart';

/// {@template pulumi_networkfirewall_container_association_container_association_args_doc}
/// The set of arguments for ContainerAssociation.
/// {@endtemplate}
/// {@macro pulumi_networkfirewall_container_association_container_association_args_doc}
class ContainerAssociationArgs {
  /// Name of the container association. You can't change the name after creation. Must be between 1 and 128 characters and contain only alphanumeric characters and hyphens.
  final pulumi.Input<String> containerAssociationName;
  /// One or more monitoring configurations, up to 5. See `containerMonitoringConfiguration` Block below.
  final pulumi.Input<List<ContainerAssociationContainerMonitoringConfiguration>> containerMonitoringConfigurations;
  /// Description of the container association.
  final pulumi.Input<String?>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<ContainerAssociationTimeouts?>? timeouts;
  /// Container orchestration platform for the clusters in this association. Valid values: `ECS`, `EKS`. You can't change the type after creation.
  final pulumi.Input<String> type;

  /// Creates a new [ContainerAssociationArgs].
  /// [containerAssociationName] Name of the container association. You can't change the name after creation. Must be between 1 and 128 characters and contain only alphanumeric characters and hyphens.
  /// [containerMonitoringConfigurations] One or more monitoring configurations, up to 5. See `containerMonitoringConfiguration` Block below.
  /// [description] Description of the container association.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [type] Container orchestration platform for the clusters in this association. Valid values: `ECS`, `EKS`. You can't change the type after creation.
  const ContainerAssociationArgs({
    required this.containerAssociationName,
    required this.containerMonitoringConfigurations,
    this.description,
    this.region,
    this.tags,
    this.timeouts,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAssociationName': containerAssociationName,
      'containerMonitoringConfigurations': pulumi.Input.mapInputValue<List<ContainerAssociationContainerMonitoringConfiguration>, List<Map<String, dynamic>>>(containerMonitoringConfigurations, (value) => pulumi.Input.encodeList<ContainerAssociationContainerMonitoringConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ContainerAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ContainerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ContainerAssociationArgs(
      containerAssociationName: pulumi.Input.fromValue(map['containerAssociationName'] as String),
      containerMonitoringConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerAssociationContainerMonitoringConfiguration>(map['containerMonitoringConfigurations']!, (value) => ContainerAssociationContainerMonitoringConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
