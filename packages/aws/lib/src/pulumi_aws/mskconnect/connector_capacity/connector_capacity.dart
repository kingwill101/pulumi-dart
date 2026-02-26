// ignore_for_file: unused_element, unnecessary_cast

import '../connector_capacity_autoscaling/connector_capacity_autoscaling.dart';
import '../connector_capacity_provisioned_capacity/connector_capacity_provisioned_capacity.dart';

class ConnectorCapacity {
  /// Information about the auto scaling parameters for the connector. See <span pulumi-lang-nodejs="`autoscaling`" pulumi-lang-dotnet="`Autoscaling`" pulumi-lang-go="`autoscaling`" pulumi-lang-python="`autoscaling`" pulumi-lang-yaml="`autoscaling`" pulumi-lang-java="`autoscaling`">`autoscaling`</span> Block for details.
  final ConnectorCapacityAutoscaling? autoscaling;

  /// Details about a fixed capacity allocated to a connector. See <span pulumi-lang-nodejs="`provisionedCapacity`" pulumi-lang-dotnet="`ProvisionedCapacity`" pulumi-lang-go="`provisionedCapacity`" pulumi-lang-python="`provisioned_capacity`" pulumi-lang-yaml="`provisionedCapacity`" pulumi-lang-java="`provisionedCapacity`">`provisioned_capacity`</span> Block for details.
  final ConnectorCapacityProvisionedCapacity? provisionedCapacity;

  ConnectorCapacity({
    this.autoscaling,
    this.provisionedCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingValue = autoscaling;
    if (autoscalingValue != null) {
      map['autoscaling'] = autoscalingValue.toMap();
    }
    final provisionedCapacityValue = provisionedCapacity;
    if (provisionedCapacityValue != null) {
      map['provisionedCapacity'] = provisionedCapacityValue.toMap();
    }
    return map;
  }

  factory ConnectorCapacity.fromMap(Map<String, dynamic> map) {
    return ConnectorCapacity(
      autoscaling: map['autoscaling'] == null
          ? null
          : ConnectorCapacityAutoscaling.fromMap(
              (map['autoscaling'] as Map).cast<String, dynamic>()),
      provisionedCapacity: map['provisionedCapacity'] == null
          ? null
          : ConnectorCapacityProvisionedCapacity.fromMap(
              (map['provisionedCapacity'] as Map).cast<String, dynamic>()),
    );
  }
}
