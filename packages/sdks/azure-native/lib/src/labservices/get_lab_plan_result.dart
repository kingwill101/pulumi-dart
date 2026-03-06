// ignore_for_file: unused_element, unnecessary_cast

import 'auto_shutdown_profile_response.dart';
import 'connection_profile_response.dart';
import 'identity_response.dart';
import 'lab_plan_network_profile_response.dart';
import 'resource_operation_error_response.dart';
import 'support_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getLabPlan.
class GetLabPlanResult {
  /// The allowed regions for the lab creator to use when creating labs using this lab plan.
  final List<String>? allowedRegions;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The default lab shutdown profile. This can be changed on a lab resource and only provides a default profile.
  final AutoShutdownProfileResponse? defaultAutoShutdownProfile;
  /// The default lab connection profile. This can be changed on a lab resource and only provides a default profile.
  final ConnectionProfileResponse? defaultConnectionProfile;
  /// The lab plan network profile. To enforce lab network policies they must be defined here and cannot be changed when there are existing labs associated with this lab plan.
  final LabPlanNetworkProfileResponse? defaultNetworkProfile;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Managed Identity Information
  final IdentityResponse? identity;
  /// Base Url of the lms instance this lab plan can link lab rosters against.
  final String? linkedLmsInstance;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Current provisioning state of the lab plan.
  final String provisioningState;
  /// Error details of last operation done on lab plan.
  final ResourceOperationErrorResponse resourceOperationError;
  /// Resource ID of the Shared Image Gallery attached to this lab plan. When saving a lab template virtual machine image it will be persisted in this gallery. Shared images from the gallery can be made available to use when creating new labs.
  final String? sharedGalleryId;
  /// Support contact information and instructions for users of the lab plan. This information is displayed to lab owners and virtual machine users for all labs in the lab plan.
  final SupportInfoResponse? supportInfo;
  /// Metadata pertaining to creation and last modification of the lab plan.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetLabPlanResult].
  /// [allowedRegions] The allowed regions for the lab creator to use when creating labs using this lab plan.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultAutoShutdownProfile] The default lab shutdown profile. This can be changed on a lab resource and only provides a default profile.
  /// [defaultConnectionProfile] The default lab connection profile. This can be changed on a lab resource and only provides a default profile.
  /// [defaultNetworkProfile] The lab plan network profile. To enforce lab network policies they must be defined here and cannot be changed when there are existing labs associated with this lab plan.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Managed Identity Information
  /// [linkedLmsInstance] Base Url of the lms instance this lab plan can link lab rosters against.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Current provisioning state of the lab plan.
  /// [resourceOperationError] Error details of last operation done on lab plan.
  /// [sharedGalleryId] Resource ID of the Shared Image Gallery attached to this lab plan. When saving a lab template virtual machine image it will be persisted in this gallery. Shared images from the gallery can be made available to use when creating new labs.
  /// [supportInfo] Support contact information and instructions for users of the lab plan. This information is displayed to lab owners and virtual machine users for all labs in the lab plan.
  /// [systemData] Metadata pertaining to creation and last modification of the lab plan.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetLabPlanResult({
    this.allowedRegions,
    required this.azureApiVersion,
    this.defaultAutoShutdownProfile,
    this.defaultConnectionProfile,
    this.defaultNetworkProfile,
    required this.id,
    this.identity,
    this.linkedLmsInstance,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceOperationError,
    this.sharedGalleryId,
    this.supportInfo,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRegions': ?allowedRegions,
      'azureApiVersion': azureApiVersion,
      'defaultAutoShutdownProfile': ?defaultAutoShutdownProfile?.toMap(),
      'defaultConnectionProfile': ?defaultConnectionProfile?.toMap(),
      'defaultNetworkProfile': ?defaultNetworkProfile?.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'linkedLmsInstance': ?linkedLmsInstance,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceOperationError': resourceOperationError.toMap(),
      'sharedGalleryId': ?sharedGalleryId,
      'supportInfo': ?supportInfo?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetLabPlanResult.fromMap(Map<String, dynamic> map) {
    return GetLabPlanResult(
      allowedRegions: (() { final guardedValue = map['allowedRegions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      defaultAutoShutdownProfile: (() { final guardedValue = map['defaultAutoShutdownProfile']; if (guardedValue == null) return null; return AutoShutdownProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      defaultConnectionProfile: (() { final guardedValue = map['defaultConnectionProfile']; if (guardedValue == null) return null; return ConnectionProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      defaultNetworkProfile: (() { final guardedValue = map['defaultNetworkProfile']; if (guardedValue == null) return null; return LabPlanNetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      linkedLmsInstance: (() { final guardedValue = map['linkedLmsInstance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceOperationError: ResourceOperationErrorResponse.fromMap((map['resourceOperationError']! as Map).cast<String, dynamic>()),
      sharedGalleryId: (() { final guardedValue = map['sharedGalleryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportInfo: (() { final guardedValue = map['supportInfo']; if (guardedValue == null) return null; return SupportInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

