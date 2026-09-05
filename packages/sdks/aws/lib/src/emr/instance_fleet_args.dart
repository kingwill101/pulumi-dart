// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_fleet_instance_type_config.dart';
import 'instance_fleet_launch_specifications.dart';

/// {@template pulumi_emr_instance_fleet_instance_fleet_args_doc}
/// The set of arguments for InstanceFleet.
/// {@endtemplate}
/// {@macro pulumi_emr_instance_fleet_instance_fleet_args_doc}
class InstanceFleetArgs {
  /// ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterId;
  /// Configuration block for instance fleet
  final pulumi.Input<List<InstanceFleetInstanceTypeConfig>?>? instanceTypeConfigs;
  /// Configuration block for launch specification
  final pulumi.Input<InstanceFleetLaunchSpecifications?>? launchSpecifications;
  /// Friendly name given to the instance fleet.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  final pulumi.Input<int?>? targetOnDemandCapacity;
  /// The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  final pulumi.Input<int?>? targetSpotCapacity;

  /// Creates a new [InstanceFleetArgs].
  /// [clusterId] ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  /// [instanceTypeConfigs] Configuration block for instance fleet
  /// [launchSpecifications] Configuration block for launch specification
  /// [name] Friendly name given to the instance fleet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetOnDemandCapacity] The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  /// [targetSpotCapacity] The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  const InstanceFleetArgs({
    required this.clusterId,
    this.instanceTypeConfigs,
    this.launchSpecifications,
    this.name,
    this.region,
    this.targetOnDemandCapacity,
    this.targetSpotCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'instanceTypeConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstanceFleetInstanceTypeConfig>, List<Map<String, dynamic>>>(instanceTypeConfigs, (value) => pulumi.Input.encodeList<InstanceFleetInstanceTypeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchSpecifications': ?pulumi.Input.mapOptionalInputValue<InstanceFleetLaunchSpecifications, Map<String, dynamic>>(launchSpecifications, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'targetOnDemandCapacity': ?targetOnDemandCapacity,
      'targetSpotCapacity': ?targetSpotCapacity,
    };
  }

  factory InstanceFleetArgs.fromMap(Map<String, dynamic> map) {
    return InstanceFleetArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      instanceTypeConfigs: (() { final guardedValue = map['instanceTypeConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFleetInstanceTypeConfig>(guardedValue, (value) => InstanceFleetInstanceTypeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      launchSpecifications: (() { final guardedValue = map['launchSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFleetLaunchSpecifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetOnDemandCapacity: (() { final guardedValue = map['targetOnDemandCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      targetSpotCapacity: (() { final guardedValue = map['targetSpotCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
