// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_capacity_autoscaling.dart';
import 'connector_capacity_provisioned_capacity.dart';

class ConnectorCapacity {
  /// Information about the auto scaling parameters for the connector. See `autoscaling` Block for details.
  final pulumi.Input<ConnectorCapacityAutoscaling>? autoscaling;
  /// Details about a fixed capacity allocated to a connector. See `provisioned_capacity` Block for details.
  final pulumi.Input<ConnectorCapacityProvisionedCapacity>? provisionedCapacity;

  /// Creates a new [ConnectorCapacity].
  /// [autoscaling] Information about the auto scaling parameters for the connector. See `autoscaling` Block for details.
  /// [provisionedCapacity] Details about a fixed capacity allocated to a connector. See `provisioned_capacity` Block for details.
  ConnectorCapacity({
    this.autoscaling,
    this.provisionedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaling': ?pulumi.Input.mapOptionalInputValue<ConnectorCapacityAutoscaling, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'provisionedCapacity': ?pulumi.Input.mapOptionalInputValue<ConnectorCapacityProvisionedCapacity, Map<String, dynamic>>(provisionedCapacity, (value) => value.toMap()),
    };
  }

  factory ConnectorCapacity.fromMap(Map<String, dynamic> map) {
    return ConnectorCapacity(
      autoscaling: map['autoscaling'] == null ? null : ((ConnectorCapacityAutoscaling.fromMap((map['autoscaling']! as Map).cast<String, dynamic>())).input()).input(),
      provisionedCapacity: map['provisionedCapacity'] == null ? null : ((ConnectorCapacityProvisionedCapacity.fromMap((map['provisionedCapacity']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

