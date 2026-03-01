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
  final pulumi.Input<List<InstanceFleetInstanceTypeConfig>>? instanceTypeConfigs;
  /// Configuration block for launch specification
  final pulumi.Input<InstanceFleetLaunchSpecifications>? launchSpecifications;
  /// Friendly name given to the instance fleet.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  final pulumi.Input<int>? targetOnDemandCapacity;
  /// The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  final pulumi.Input<int>? targetSpotCapacity;

  /// Creates a new [InstanceFleetArgs].
  /// [clusterId] ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  /// [instanceTypeConfigs] Configuration block for instance fleet
  /// [launchSpecifications] Configuration block for launch specification
  /// [name] Friendly name given to the instance fleet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetOnDemandCapacity] The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  /// [targetSpotCapacity] The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  InstanceFleetArgs({
    required String clusterId,
    List<InstanceFleetInstanceTypeConfig>? instanceTypeConfigs,
    InstanceFleetLaunchSpecifications? launchSpecifications,
    String? name,
    String? region,
    int? targetOnDemandCapacity,
    int? targetSpotCapacity,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      instanceTypeConfigs = pulumi.Input.asOptionalInput<List<InstanceFleetInstanceTypeConfig>>(instanceTypeConfigs),
      launchSpecifications = pulumi.Input.asOptionalInput<InstanceFleetLaunchSpecifications>(launchSpecifications),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetOnDemandCapacity = pulumi.Input.asOptionalInput<int>(targetOnDemandCapacity),
      targetSpotCapacity = pulumi.Input.asOptionalInput<int>(targetSpotCapacity);

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
      clusterId: map['clusterId'] as String,
      instanceTypeConfigs: map['instanceTypeConfigs'] == null ? null : pulumi.Input.decodeList<InstanceFleetInstanceTypeConfig>(map['instanceTypeConfigs'], (value) => InstanceFleetInstanceTypeConfig.fromMap((value as Map).cast<String, dynamic>())),
      launchSpecifications: map['launchSpecifications'] == null ? null : InstanceFleetLaunchSpecifications.fromMap((map['launchSpecifications'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      targetOnDemandCapacity: map['targetOnDemandCapacity'] == null ? null : map['targetOnDemandCapacity'] as int,
      targetSpotCapacity: map['targetSpotCapacity'] == null ? null : map['targetSpotCapacity'] as int,
    );
  }
}

