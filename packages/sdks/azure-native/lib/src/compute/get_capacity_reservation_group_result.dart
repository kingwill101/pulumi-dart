// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_group_instance_view_response.dart';
import 'resource_sharing_profile_response.dart';
import 'sub_resource_read_only_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCapacityReservationGroup.
class GetCapacityReservationGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A list of all capacity reservation resource ids that belong to capacity reservation group.
  final List<SubResourceReadOnlyResponse>? capacityReservations;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The capacity reservation group instance view which has the list of instance views for all the capacity reservations that belong to the capacity reservation group.
  final CapacityReservationGroupInstanceViewResponse? instanceView;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Specifies the settings to enable sharing across subscriptions for the capacity reservation group resource. The capacity reservation group resource can generally be shared across subscriptions belonging to a single Azure AAD tenant or across AAD tenants if there is a trust relationship established between the tenants.  Block capacity reservation does not support sharing across subscriptions. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details.
  final ResourceSharingProfileResponse? sharingProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// A list of references to all virtual machines associated to the capacity reservation group.
  final List<SubResourceReadOnlyResponse>? virtualMachinesAssociated;
  /// The availability zones.
  final List<String>? zones;

  /// Creates a new [GetCapacityReservationGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [capacityReservations] A list of all capacity reservation resource ids that belong to capacity reservation group.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [instanceView] The capacity reservation group instance view which has the list of instance views for all the capacity reservations that belong to the capacity reservation group.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [sharingProfile] Specifies the settings to enable sharing across subscriptions for the capacity reservation group resource. The capacity reservation group resource can generally be shared across subscriptions belonging to a single Azure AAD tenant or across AAD tenants if there is a trust relationship established between the tenants.  Block capacity reservation does not support sharing across subscriptions. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachinesAssociated] A list of references to all virtual machines associated to the capacity reservation group.
  /// [zones] The availability zones.
  const GetCapacityReservationGroupResult({
    this.azureApiVersion,
    this.capacityReservations,
    this.id,
    this.instanceView,
    this.location,
    this.name,
    this.sharingProfile,
    this.systemData,
    this.tags,
    this.type,
    this.virtualMachinesAssociated,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'capacityReservations': ?(() { final guardedValue = capacityReservations; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceReadOnlyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceView': ?instanceView?.toMap(),
      'location': ?location,
      'name': ?name,
      'sharingProfile': ?sharingProfile?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'virtualMachinesAssociated': ?(() { final guardedValue = virtualMachinesAssociated; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceReadOnlyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zones': ?zones,
    };
  }

  factory GetCapacityReservationGroupResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityReservationGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityReservations: (() { final guardedValue = map['capacityReservations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceReadOnlyResponse>(guardedValue, (value) => SubResourceReadOnlyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceView: (() { final guardedValue = map['instanceView']; if (guardedValue == null) return null; return CapacityReservationGroupInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharingProfile: (() { final guardedValue = map['sharingProfile']; if (guardedValue == null) return null; return ResourceSharingProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachinesAssociated: (() { final guardedValue = map['virtualMachinesAssociated']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceReadOnlyResponse>(guardedValue, (value) => SubResourceReadOnlyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
