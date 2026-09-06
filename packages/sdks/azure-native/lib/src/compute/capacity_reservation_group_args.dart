// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_sharing_profile.dart';

/// {@template pulumi_compute_capacity_reservation_group_args_doc}
/// The set of arguments for CapacityReservationGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_capacity_reservation_group_args_doc}
class CapacityReservationGroupArgs {
  /// The name of the capacity reservation group.
  final pulumi.Input<String?>? capacityReservationGroupName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the settings to enable sharing across subscriptions for the capacity reservation group resource. The capacity reservation group resource can generally be shared across subscriptions belonging to a single Azure AAD tenant or across AAD tenants if there is a trust relationship established between the tenants.  Block capacity reservation does not support sharing across subscriptions. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details.
  final pulumi.Input<ResourceSharingProfile?>? sharingProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The availability zones.
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [CapacityReservationGroupArgs].
  /// [capacityReservationGroupName] The name of the capacity reservation group.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sharingProfile] Specifies the settings to enable sharing across subscriptions for the capacity reservation group resource. The capacity reservation group resource can generally be shared across subscriptions belonging to a single Azure AAD tenant or across AAD tenants if there is a trust relationship established between the tenants.  Block capacity reservation does not support sharing across subscriptions. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details.
  /// [tags] Resource tags.
  /// [zones] The availability zones.
  const CapacityReservationGroupArgs({
    this.capacityReservationGroupName,
    this.location,
    required this.resourceGroupName,
    this.sharingProfile,
    this.tags,
    this.zones,
  });

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
      capacityReservationGroupName: (() { final guardedValue = map['capacityReservationGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sharingProfile: (() { final guardedValue = map['sharingProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSharingProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
