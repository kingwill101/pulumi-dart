// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_sharing_profile.dart';

/// {@template pulumi_compute_capacity_reservation_group_args_doc}
/// The set of arguments for CapacityReservationGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_capacity_reservation_group_args_doc}
class CapacityReservationGroupArgs {
  /// The name of the capacity reservation group.
  final pulumi.Input<String>? capacityReservationGroupName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the settings to enable sharing across subscriptions for the capacity reservation group resource. The capacity reservation group resource can generally be shared across subscriptions belonging to a single Azure AAD tenant or across AAD tenants if there is a trust relationship established between the tenants.  Block capacity reservation does not support sharing across subscriptions. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details.
  final pulumi.Input<ResourceSharingProfile>? sharingProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The availability zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [CapacityReservationGroupArgs].
  /// [capacityReservationGroupName] The name of the capacity reservation group.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sharingProfile] Specifies the settings to enable sharing across subscriptions for the capacity reservation group resource. The capacity reservation group resource can generally be shared across subscriptions belonging to a single Azure AAD tenant or across AAD tenants if there is a trust relationship established between the tenants.  Block capacity reservation does not support sharing across subscriptions. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details.
  /// [tags] Resource tags.
  /// [zones] The availability zones.
  CapacityReservationGroupArgs({
    pulumi.Output<String>? capacityReservationGroupName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ResourceSharingProfile>? sharingProfile,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      capacityReservationGroupName = pulumi.Input.asOptionalInput<String>(capacityReservationGroupName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sharingProfile = pulumi.Input.asOptionalInput<ResourceSharingProfile>(sharingProfile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationGroupName': ?capacityReservationGroupName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sharingProfile': ?pulumi.Input.mapOptionalInputValue<ResourceSharingProfile, Map<String, dynamic>>(sharingProfile, (value) => value.toMap()),
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory CapacityReservationGroupArgs.fromMap(Map<String, dynamic> map) {
    return CapacityReservationGroupArgs(
      capacityReservationGroupName: map['capacityReservationGroupName'] == null ? null : pulumi.Output.create<String>(map['capacityReservationGroupName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sharingProfile: map['sharingProfile'] == null ? null : pulumi.Output.create<ResourceSharingProfile>(ResourceSharingProfile.fromMap((map['sharingProfile'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

