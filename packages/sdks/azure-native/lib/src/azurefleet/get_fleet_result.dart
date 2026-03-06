// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_locations_profile_response.dart';
import 'compute_profile_response.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'regular_priority_profile_response.dart';
import 'spot_priority_profile_response.dart';
import 'system_data_response.dart';
import 'vm_size_profile_response.dart';
import 'vmattributes_response.dart';

/// Result data returned by getFleet.
class GetFleetResult {
  /// Represents the configuration for additional locations where Fleet resources may be deployed.
  final AdditionalLocationsProfileResponse? additionalLocationsProfile;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Compute Profile to use for running user's workloads.
  final ComputeProfileResponse computeProfile;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Details of the resource plan.
  final PlanResponse? plan;
  /// The status of the last operation.
  final String provisioningState;
  /// Configuration Options for Regular instances in Compute Fleet.
  final RegularPriorityProfileResponse? regularPriorityProfile;
  /// Configuration Options for Spot instances in Compute Fleet.
  final SpotPriorityProfileResponse? spotPriorityProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Specifies the time at which the Compute Fleet is created.
  final String timeCreated;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Specifies the ID which uniquely identifies a Compute Fleet.
  final String uniqueId;
  /// Attribute based Fleet.
  final VMAttributesResponse? vmAttributes;
  /// List of VM sizes supported for Compute Fleet
  final List<VmSizeProfileResponse> vmSizesProfile;
  /// Zones in which the Compute Fleet is available
  final List<String>? zones;

  /// Creates a new [GetFleetResult].
  /// [additionalLocationsProfile] Represents the configuration for additional locations where Fleet resources may be deployed.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [computeProfile] Compute Profile to use for running user's workloads.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [plan] Details of the resource plan.
  /// [provisioningState] The status of the last operation.
  /// [regularPriorityProfile] Configuration Options for Regular instances in Compute Fleet.
  /// [spotPriorityProfile] Configuration Options for Spot instances in Compute Fleet.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [timeCreated] Specifies the time at which the Compute Fleet is created.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uniqueId] Specifies the ID which uniquely identifies a Compute Fleet.
  /// [vmAttributes] Attribute based Fleet.
  /// [vmSizesProfile] List of VM sizes supported for Compute Fleet
  /// [zones] Zones in which the Compute Fleet is available
  const GetFleetResult({
    this.additionalLocationsProfile,
    required this.azureApiVersion,
    required this.computeProfile,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    this.plan,
    required this.provisioningState,
    this.regularPriorityProfile,
    this.spotPriorityProfile,
    required this.systemData,
    this.tags,
    required this.timeCreated,
    required this.type,
    required this.uniqueId,
    this.vmAttributes,
    required this.vmSizesProfile,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLocationsProfile': ?additionalLocationsProfile?.toMap(),
      'azureApiVersion': azureApiVersion,
      'computeProfile': computeProfile.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'plan': ?plan?.toMap(),
      'provisioningState': provisioningState,
      'regularPriorityProfile': ?regularPriorityProfile?.toMap(),
      'spotPriorityProfile': ?spotPriorityProfile?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeCreated': timeCreated,
      'type': type,
      'uniqueId': uniqueId,
      'vmAttributes': ?vmAttributes?.toMap(),
      'vmSizesProfile': pulumi.Input.encodeList<VmSizeProfileResponse, Map<String, dynamic>>(vmSizesProfile, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory GetFleetResult.fromMap(Map<String, dynamic> map) {
    return GetFleetResult(
      additionalLocationsProfile: (() { final guardedValue = map['additionalLocationsProfile']; if (guardedValue == null) return null; return AdditionalLocationsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      computeProfile: ComputeProfileResponse.fromMap((map['computeProfile']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      regularPriorityProfile: (() { final guardedValue = map['regularPriorityProfile']; if (guardedValue == null) return null; return RegularPriorityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spotPriorityProfile: (() { final guardedValue = map['spotPriorityProfile']; if (guardedValue == null) return null; return SpotPriorityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeCreated: map['timeCreated'] as String,
      type: map['type'] as String,
      uniqueId: map['uniqueId'] as String,
      vmAttributes: (() { final guardedValue = map['vmAttributes']; if (guardedValue == null) return null; return VMAttributesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vmSizesProfile: pulumi.Input.decodeList<VmSizeProfileResponse>(map['vmSizesProfile']!, (value) => VmSizeProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

