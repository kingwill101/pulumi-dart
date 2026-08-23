// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'image_storage_profile_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Result data returned by getImage.
class GetImageResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The extended location of the Image.
  final ExtendedLocationResponse? extendedLocation;
  /// Specifies the HyperVGenerationType of the VirtualMachine created from the image. From API Version 2019-03-01 if the image source is a blob, then we need the user to specify the value, if the source is managed resource like disk or snapshot, we may require the user to specify the property if we cannot deduce it from the source managed resource.
  final String? hyperVGeneration;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state.
  final String provisioningState;
  /// The source virtual machine from which Image is created.
  final SubResourceResponse? sourceVirtualMachine;
  /// Specifies the storage settings for the virtual machine disks.
  final ImageStorageProfileResponse? storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetImageResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] The extended location of the Image.
  /// [hyperVGeneration] Specifies the HyperVGenerationType of the VirtualMachine created from the image. From API Version 2019-03-01 if the image source is a blob, then we need the user to specify the value, if the source is managed resource like disk or snapshot, we may require the user to specify the property if we cannot deduce it from the source managed resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state.
  /// [sourceVirtualMachine] The source virtual machine from which Image is created.
  /// [storageProfile] Specifies the storage settings for the virtual machine disks.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetImageResult({
    required this.azureApiVersion,
    this.extendedLocation,
    this.hyperVGeneration,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.sourceVirtualMachine,
    this.storageProfile,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'extendedLocation': ?extendedLocation?.toMap(),
      'hyperVGeneration': ?hyperVGeneration,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'sourceVirtualMachine': ?sourceVirtualMachine?.toMap(),
      'storageProfile': ?storageProfile?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sourceVirtualMachine: (() { final guardedValue = map['sourceVirtualMachine']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return ImageStorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
