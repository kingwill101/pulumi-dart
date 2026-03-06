// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';
import 'proximity_placement_group_properties_intent_response.dart';
import 'sub_resource_with_colocation_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getProximityPlacementGroup.
class GetProximityPlacementGroupResult {
  /// A list of references to all availability sets in the proximity placement group.
  final List<SubResourceWithColocationStatusResponse> availabilitySets;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Describes colocation status of the Proximity Placement Group.
  final InstanceViewStatusResponse? colocationStatus;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Specifies the user intent of the proximity placement group.
  final ProximityPlacementGroupPropertiesIntentResponse? intent;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Specifies the type of the proximity placement group. Possible values are: **Standard** : Co-locate resources within an Azure region or Availability Zone. **Ultra** : For future use.
  final String? proximityPlacementGroupType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// A list of references to all virtual machine scale sets in the proximity placement group.
  final List<SubResourceWithColocationStatusResponse> virtualMachineScaleSets;
  /// A list of references to all virtual machines in the proximity placement group.
  final List<SubResourceWithColocationStatusResponse> virtualMachines;
  /// The availability zones.
  final List<String>? zones;

  /// Creates a new [GetProximityPlacementGroupResult].
  /// [availabilitySets] A list of references to all availability sets in the proximity placement group.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [colocationStatus] Describes colocation status of the Proximity Placement Group.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [intent] Specifies the user intent of the proximity placement group.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [proximityPlacementGroupType] Specifies the type of the proximity placement group. Possible values are: **Standard** : Co-locate resources within an Azure region or Availability Zone. **Ultra** : For future use.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachineScaleSets] A list of references to all virtual machine scale sets in the proximity placement group.
  /// [virtualMachines] A list of references to all virtual machines in the proximity placement group.
  /// [zones] The availability zones.
  const GetProximityPlacementGroupResult({
    required this.availabilitySets,
    required this.azureApiVersion,
    this.colocationStatus,
    required this.id,
    this.intent,
    required this.location,
    required this.name,
    this.proximityPlacementGroupType,
    required this.systemData,
    this.tags,
    required this.type,
    required this.virtualMachineScaleSets,
    required this.virtualMachines,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySets': pulumi.Input.encodeList<SubResourceWithColocationStatusResponse, Map<String, dynamic>>(availabilitySets, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'colocationStatus': ?colocationStatus?.toMap(),
      'id': id,
      'intent': ?intent?.toMap(),
      'location': location,
      'name': name,
      'proximityPlacementGroupType': ?proximityPlacementGroupType,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualMachineScaleSets': pulumi.Input.encodeList<SubResourceWithColocationStatusResponse, Map<String, dynamic>>(virtualMachineScaleSets, (value) => value.toMap()),
      'virtualMachines': pulumi.Input.encodeList<SubResourceWithColocationStatusResponse, Map<String, dynamic>>(virtualMachines, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory GetProximityPlacementGroupResult.fromMap(Map<String, dynamic> map) {
    return GetProximityPlacementGroupResult(
      availabilitySets: pulumi.Input.decodeList<SubResourceWithColocationStatusResponse>(map['availabilitySets']!, (value) => SubResourceWithColocationStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      colocationStatus: (() { final guardedValue = map['colocationStatus']; if (guardedValue == null) return null; return InstanceViewStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      intent: (() { final guardedValue = map['intent']; if (guardedValue == null) return null; return ProximityPlacementGroupPropertiesIntentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      proximityPlacementGroupType: (() { final guardedValue = map['proximityPlacementGroupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      virtualMachineScaleSets: pulumi.Input.decodeList<SubResourceWithColocationStatusResponse>(map['virtualMachineScaleSets']!, (value) => SubResourceWithColocationStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      virtualMachines: pulumi.Input.decodeList<SubResourceWithColocationStatusResponse>(map['virtualMachines']!, (value) => SubResourceWithColocationStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

