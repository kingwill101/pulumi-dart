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
    this.colocationStatus,
    this.intent,
    this.location,
    this.proximityPlacementGroupName,
    this.proximityPlacementGroupType,
    required this.resourceGroupName,
    this.tags,
    this.zones,
  });

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
      colocationStatus: map['colocationStatus'] == null ? null : (InstanceViewStatus.fromMap((map['colocationStatus']! as Map).cast<String, dynamic>())).input(),
      intent: map['intent'] == null ? null : (ProximityPlacementGroupPropertiesIntent.fromMap((map['intent']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      proximityPlacementGroupName: map['proximityPlacementGroupName'] == null ? null : (map['proximityPlacementGroupName']! as String).input(),
      proximityPlacementGroupType: map['proximityPlacementGroupType'] == null ? null : (map['proximityPlacementGroupType']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

