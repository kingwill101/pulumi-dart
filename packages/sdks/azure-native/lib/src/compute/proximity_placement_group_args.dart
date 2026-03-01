// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status.dart';
import 'proximity_placement_group_properties_intent.dart';

/// {@template pulumi_compute_proximity_placement_group_args_doc}
/// The set of arguments for ProximityPlacementGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_proximity_placement_group_args_doc}
class ProximityPlacementGroupArgs {
  /// Describes colocation status of the Proximity Placement Group.
  final pulumi.Input<InstanceViewStatus>? colocationStatus;
  /// Specifies the user intent of the proximity placement group.
  final pulumi.Input<ProximityPlacementGroupPropertiesIntent>? intent;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the proximity placement group.
  final pulumi.Input<String>? proximityPlacementGroupName;
  /// Specifies the type of the proximity placement group. Possible values are: **Standard** : Co-locate resources within an Azure region or Availability Zone. **Ultra** : For future use.
  final pulumi.Input<String>? proximityPlacementGroupType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The availability zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ProximityPlacementGroupArgs].
  /// [colocationStatus] Describes colocation status of the Proximity Placement Group.
  /// [intent] Specifies the user intent of the proximity placement group.
  /// [location] The geo-location where the resource lives
  /// [proximityPlacementGroupName] The name of the proximity placement group.
  /// [proximityPlacementGroupType] Specifies the type of the proximity placement group. Possible values are: **Standard** : Co-locate resources within an Azure region or Availability Zone. **Ultra** : For future use.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [zones] The availability zones.
  ProximityPlacementGroupArgs({
    pulumi.Output<InstanceViewStatus>? colocationStatus,
    pulumi.Output<ProximityPlacementGroupPropertiesIntent>? intent,
    pulumi.Output<String>? location,
    pulumi.Output<String>? proximityPlacementGroupName,
    pulumi.Output<String>? proximityPlacementGroupType,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      colocationStatus = pulumi.Input.asOptionalInput<InstanceViewStatus>(colocationStatus),
      intent = pulumi.Input.asOptionalInput<ProximityPlacementGroupPropertiesIntent>(intent),
      location = pulumi.Input.asOptionalInput<String>(location),
      proximityPlacementGroupName = pulumi.Input.asOptionalInput<String>(proximityPlacementGroupName),
      proximityPlacementGroupType = pulumi.Input.asOptionalInput<String>(proximityPlacementGroupType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colocationStatus': ?pulumi.Input.mapOptionalInputValue<InstanceViewStatus, Map<String, dynamic>>(colocationStatus, (value) => value.toMap()),
      'intent': ?pulumi.Input.mapOptionalInputValue<ProximityPlacementGroupPropertiesIntent, Map<String, dynamic>>(intent, (value) => value.toMap()),
      'location': ?location,
      'proximityPlacementGroupName': ?proximityPlacementGroupName,
      'proximityPlacementGroupType': ?proximityPlacementGroupType,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory ProximityPlacementGroupArgs.fromMap(Map<String, dynamic> map) {
    return ProximityPlacementGroupArgs(
      colocationStatus: map['colocationStatus'] == null ? null : pulumi.Output.create<InstanceViewStatus>(InstanceViewStatus.fromMap((map['colocationStatus'] as Map).cast<String, dynamic>())),
      intent: map['intent'] == null ? null : pulumi.Output.create<ProximityPlacementGroupPropertiesIntent>(ProximityPlacementGroupPropertiesIntent.fromMap((map['intent'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      proximityPlacementGroupName: map['proximityPlacementGroupName'] == null ? null : pulumi.Output.create<String>(map['proximityPlacementGroupName'] as String),
      proximityPlacementGroupType: map['proximityPlacementGroupType'] == null ? null : pulumi.Output.create<String>(map['proximityPlacementGroupType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

