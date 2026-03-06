// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_image_properties_custom_response.dart';
import 'custom_image_properties_from_plan_response.dart';
import 'custom_image_properties_from_vm_response.dart';
import 'data_disk_storage_type_info_response.dart';

/// Result data returned by getCustomImage.
class GetCustomImageResult {
  /// The author of the custom image.
  final String? author;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation date of the custom image.
  final String creationDate;
  /// Storage information about the plan related to this custom image
  final CustomImagePropertiesFromPlanResponse? customImagePlan;
  /// Storage information about the data disks present in the custom image
  final List<DataDiskStorageTypeInfoResponse>? dataDiskStorageInfo;
  /// The description of the custom image.
  final String? description;
  /// The identifier of the resource.
  final String id;
  /// Whether or not the custom images underlying offer/plan has been enabled for programmatic deployment
  final bool? isPlanAuthorized;
  /// The location of the resource.
  final String? location;
  /// The Managed Image Id backing the custom image.
  final String? managedImageId;
  /// The Managed Snapshot Id backing the custom image.
  final String? managedSnapshotId;
  /// The name of the resource.
  final String name;
  /// The provisioning status of the resource.
  final String provisioningState;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;
  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;
  /// The VHD from which the image is to be created.
  final CustomImagePropertiesCustomResponse? vhd;
  /// The virtual machine from which the image is to be created.
  final CustomImagePropertiesFromVmResponse? vm;

  /// Creates a new [GetCustomImageResult].
  /// [author] The author of the custom image.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The creation date of the custom image.
  /// [customImagePlan] Storage information about the plan related to this custom image
  /// [dataDiskStorageInfo] Storage information about the data disks present in the custom image
  /// [description] The description of the custom image.
  /// [id] The identifier of the resource.
  /// [isPlanAuthorized] Whether or not the custom images underlying offer/plan has been enabled for programmatic deployment
  /// [location] The location of the resource.
  /// [managedImageId] The Managed Image Id backing the custom image.
  /// [managedSnapshotId] The Managed Snapshot Id backing the custom image.
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning status of the resource.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  /// [vhd] The VHD from which the image is to be created.
  /// [vm] The virtual machine from which the image is to be created.
  const GetCustomImageResult({
    this.author,
    required this.azureApiVersion,
    required this.creationDate,
    this.customImagePlan,
    this.dataDiskStorageInfo,
    this.description,
    required this.id,
    this.isPlanAuthorized,
    this.location,
    this.managedImageId,
    this.managedSnapshotId,
    required this.name,
    required this.provisioningState,
    this.tags,
    required this.type,
    required this.uniqueIdentifier,
    this.vhd,
    this.vm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author,
      'azureApiVersion': azureApiVersion,
      'creationDate': creationDate,
      'customImagePlan': ?customImagePlan?.toMap(),
      'dataDiskStorageInfo': ?(() { final guardedValue = dataDiskStorageInfo; if (guardedValue == null) return null; return pulumi.Input.encodeList<DataDiskStorageTypeInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'id': id,
      'isPlanAuthorized': ?isPlanAuthorized,
      'location': ?location,
      'managedImageId': ?managedImageId,
      'managedSnapshotId': ?managedSnapshotId,
      'name': name,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
      'vhd': ?vhd?.toMap(),
      'vm': ?vm?.toMap(),
    };
  }

  factory GetCustomImageResult.fromMap(Map<String, dynamic> map) {
    return GetCustomImageResult(
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      creationDate: map['creationDate'] as String,
      customImagePlan: (() { final guardedValue = map['customImagePlan']; if (guardedValue == null) return null; return CustomImagePropertiesFromPlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataDiskStorageInfo: (() { final guardedValue = map['dataDiskStorageInfo']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataDiskStorageTypeInfoResponse>(guardedValue, (value) => DataDiskStorageTypeInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isPlanAuthorized: (() { final guardedValue = map['isPlanAuthorized']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedImageId: (() { final guardedValue = map['managedImageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedSnapshotId: (() { final guardedValue = map['managedSnapshotId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
      vhd: (() { final guardedValue = map['vhd']; if (guardedValue == null) return null; return CustomImagePropertiesCustomResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vm: (() { final guardedValue = map['vm']; if (guardedValue == null) return null; return CustomImagePropertiesFromVmResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

