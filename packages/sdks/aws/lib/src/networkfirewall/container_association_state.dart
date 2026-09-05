// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_association_container_monitoring_configuration.dart';
import 'container_association_timeouts.dart';

/// Input properties used for looking up and filtering ContainerAssociation resources.
class ContainerAssociationState {
  /// ARN of the container association.
  final pulumi.Input<String?>? containerAssociationArn;
  /// Name of the container association. You can't change the name after creation. Must be between 1 and 128 characters and contain only alphanumeric characters and hyphens.
  final pulumi.Input<String?>? containerAssociationName;
  /// One or more monitoring configurations, up to 5. See `containerMonitoringConfiguration` Block below.
  final pulumi.Input<List<ContainerAssociationContainerMonitoringConfiguration>?>? containerMonitoringConfigurations;
  /// Description of the container association.
  final pulumi.Input<String?>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Number of CIDR blocks resolved from the monitored containers for this container association.
  final pulumi.Input<int?>? resolvedCidrCount;
  /// Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<ContainerAssociationTimeouts?>? timeouts;
  /// Container orchestration platform for the clusters in this association. Valid values: `ECS`, `EKS`. You can't change the type after creation.
  final pulumi.Input<String?>? type;
  /// Token used for optimistic locking.
  final pulumi.Input<String?>? updateToken;

  /// Creates a new [ContainerAssociationState].
  /// [containerAssociationArn] ARN of the container association.
  /// [containerAssociationName] Name of the container association. You can't change the name after creation. Must be between 1 and 128 characters and contain only alphanumeric characters and hyphens.
  /// [containerMonitoringConfigurations] One or more monitoring configurations, up to 5. See `containerMonitoringConfiguration` Block below.
  /// [description] Description of the container association.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolvedCidrCount] Number of CIDR blocks resolved from the monitored containers for this container association.
  /// [tags] Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [type] Container orchestration platform for the clusters in this association. Valid values: `ECS`, `EKS`. You can't change the type after creation.
  /// [updateToken] Token used for optimistic locking.
  const ContainerAssociationState({
    this.containerAssociationArn,
    this.containerAssociationName,
    this.containerMonitoringConfigurations,
    this.description,
    this.region,
    this.resolvedCidrCount,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.type,
    this.updateToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAssociationArn': ?containerAssociationArn,
      'containerAssociationName': ?containerAssociationName,
      'containerMonitoringConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ContainerAssociationContainerMonitoringConfiguration>, List<Map<String, dynamic>>>(containerMonitoringConfigurations, (value) => pulumi.Input.encodeList<ContainerAssociationContainerMonitoringConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'region': ?region,
      'resolvedCidrCount': ?resolvedCidrCount,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ContainerAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
      'updateToken': ?updateToken,
    };
  }

  factory ContainerAssociationState.fromMap(Map<String, dynamic> map) {
    return ContainerAssociationState(
      containerAssociationArn: (() { final guardedValue = map['containerAssociationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerAssociationName: (() { final guardedValue = map['containerAssociationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerMonitoringConfigurations: (() { final guardedValue = map['containerMonitoringConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerAssociationContainerMonitoringConfiguration>(guardedValue, (value) => ContainerAssociationContainerMonitoringConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolvedCidrCount: (() { final guardedValue = map['resolvedCidrCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateToken: (() { final guardedValue = map['updateToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
