// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_component_specification_scheduling_config_availability_zone_balance.dart';

class InferenceComponentSpecificationSchedulingConfig {
  /// Configuration for balancing copies across Availability Zones. See `availabilityZoneBalance` Block.
  final pulumi.Input<InferenceComponentSpecificationSchedulingConfigAvailabilityZoneBalance?>? availabilityZoneBalance;
  /// Strategy for placing inference component copies. Valid values: `SPREAD`, `BINPACK`.
  final pulumi.Input<String> placementStrategy;

  /// Creates a new [InferenceComponentSpecificationSchedulingConfig].
  /// [availabilityZoneBalance] Configuration for balancing copies across Availability Zones. See `availabilityZoneBalance` Block.
  /// [placementStrategy] Strategy for placing inference component copies. Valid values: `SPREAD`, `BINPACK`.
  const InferenceComponentSpecificationSchedulingConfig({
    this.availabilityZoneBalance,
    required this.placementStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneBalance': ?pulumi.Input.mapOptionalInputValue<InferenceComponentSpecificationSchedulingConfigAvailabilityZoneBalance, Map<String, dynamic>>(availabilityZoneBalance, (value) => value.toMap()),
      'placementStrategy': placementStrategy,
    };
  }

  factory InferenceComponentSpecificationSchedulingConfig.fromMap(Map<String, dynamic> map) {
    return InferenceComponentSpecificationSchedulingConfig(
      availabilityZoneBalance: (() { final guardedValue = map['availabilityZoneBalance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentSpecificationSchedulingConfigAvailabilityZoneBalance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      placementStrategy: pulumi.Input.fromValue(map['placementStrategy'] as String),
    );
  }
}
