// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_allocation.dart';

class FargateServiceCapacity {
  /// Allocate tasks to Fargate On-Demand. If neither allocation is specified, use the Fargate launch
  /// type without requiring a cluster capacity-provider association.
  ///
  /// Default - Fargate On-Demand when spot is also omitted, otherwise not selected.
  final pulumi.Input<CapacityAllocation?>? onDemand;
  /// Allocate interruption-tolerant tasks to Fargate Spot. Unavailable Spot capacity is not
  /// automatically replaced by On-Demand capacity.
  ///
  /// Default - Not selected.
  final pulumi.Input<CapacityAllocation?>? spot;

  /// Creates a new [FargateServiceCapacity].
  /// [onDemand] Allocate tasks to Fargate On-Demand. If neither allocation is specified, use the Fargate launch
  /// [spot] Allocate interruption-tolerant tasks to Fargate Spot. Unavailable Spot capacity is not
  const FargateServiceCapacity({
    this.onDemand,
    this.spot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDemand': ?pulumi.Input.mapOptionalInputValue<CapacityAllocation, Map<String, dynamic>>(onDemand, (value) => value.toMap()),
      'spot': ?pulumi.Input.mapOptionalInputValue<CapacityAllocation, Map<String, dynamic>>(spot, (value) => value.toMap()),
    };
  }

  factory FargateServiceCapacity.fromMap(Map<String, dynamic> map) {
    return FargateServiceCapacity(
      onDemand: (() { final guardedValue = map['onDemand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityAllocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spot: (() { final guardedValue = map['spot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityAllocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
