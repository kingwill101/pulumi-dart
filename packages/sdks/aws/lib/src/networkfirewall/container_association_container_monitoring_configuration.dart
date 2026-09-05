// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_association_container_monitoring_configuration_attribute_filter.dart';

class ContainerAssociationContainerMonitoringConfiguration {
  /// Key-value pairs that filter which containers within the cluster are monitored. For Amazon EKS, filter by namespace and Kubernetes labels. For Amazon ECS, filter by container instance attributes; attribute filters only match containers on the EC2 launch type, not Fargate. See `attributeFilter` Block below.
  final pulumi.Input<List<ContainerAssociationContainerMonitoringConfigurationAttributeFilter>?>? attributeFilters;
  /// ARN of the Amazon ECS or Amazon EKS cluster to monitor. The cluster must be in the same Region and account as the container association.
  final pulumi.Input<String> clusterArn;

  /// Creates a new [ContainerAssociationContainerMonitoringConfiguration].
  /// [attributeFilters] Key-value pairs that filter which containers within the cluster are monitored. For Amazon EKS, filter by namespace and Kubernetes labels. For Amazon ECS, filter by container instance attributes; attribute filters only match containers on the EC2 launch type, not Fargate. See `attributeFilter` Block below.
  /// [clusterArn] ARN of the Amazon ECS or Amazon EKS cluster to monitor. The cluster must be in the same Region and account as the container association.
  const ContainerAssociationContainerMonitoringConfiguration({
    this.attributeFilters,
    required this.clusterArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeFilters': ?pulumi.Input.mapOptionalInputValue<List<ContainerAssociationContainerMonitoringConfigurationAttributeFilter>, List<Map<String, dynamic>>>(attributeFilters, (value) => pulumi.Input.encodeList<ContainerAssociationContainerMonitoringConfigurationAttributeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterArn': clusterArn,
    };
  }

  factory ContainerAssociationContainerMonitoringConfiguration.fromMap(Map<String, dynamic> map) {
    return ContainerAssociationContainerMonitoringConfiguration(
      attributeFilters: (() { final guardedValue = map['attributeFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerAssociationContainerMonitoringConfigurationAttributeFilter>(guardedValue, (value) => ContainerAssociationContainerMonitoringConfigurationAttributeFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterArn: pulumi.Input.fromValue(map['clusterArn'] as String),
    );
  }
}
