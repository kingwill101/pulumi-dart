// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_image_properties_custom.dart';
import 'custom_image_properties_from_plan.dart';
import 'custom_image_properties_from_vm.dart';
import 'data_disk_storage_type_info.dart';

/// {@template pulumi_devtestlab_custom_image_args_doc}
/// The set of arguments for CustomImage.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_custom_image_args_doc}
class CustomImageArgs {
  /// The author of the custom image.
  final pulumi.Input<String>? author;
  /// Storage information about the plan related to this custom image
  final pulumi.Input<CustomImagePropertiesFromPlan>? customImagePlan;
  /// Storage information about the data disks present in the custom image
  final pulumi.Input<List<DataDiskStorageTypeInfo>>? dataDiskStorageInfo;
  /// The description of the custom image.
  final pulumi.Input<String>? description;
  /// Whether or not the custom images underlying offer/plan has been enabled for programmatic deployment
  final pulumi.Input<bool>? isPlanAuthorized;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The Managed Image Id backing the custom image.
  final pulumi.Input<String>? managedImageId;
  /// The Managed Snapshot Id backing the custom image.
  final pulumi.Input<String>? managedSnapshotId;
  /// The name of the CustomImage
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VHD from which the image is to be created.
  final pulumi.Input<CustomImagePropertiesCustom>? vhd;
  /// The virtual machine from which the image is to be created.
  final pulumi.Input<CustomImagePropertiesFromVm>? vm;

  /// Creates a new [CustomImageArgs].
  /// [author] The author of the custom image.
  /// [customImagePlan] Storage information about the plan related to this custom image
  /// [dataDiskStorageInfo] Storage information about the data disks present in the custom image
  /// [description] The description of the custom image.
  /// [isPlanAuthorized] Whether or not the custom images underlying offer/plan has been enabled for programmatic deployment
  /// [labName] The name of the lab.
  /// [location] The location of the resource.
  /// [managedImageId] The Managed Image Id backing the custom image.
  /// [managedSnapshotId] The Managed Snapshot Id backing the custom image.
  /// [name] The name of the CustomImage
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The tags of the resource.
  /// [vhd] The VHD from which the image is to be created.
  /// [vm] The virtual machine from which the image is to be created.
  CustomImageArgs({
    this.author,
    this.customImagePlan,
    this.dataDiskStorageInfo,
    this.description,
    this.isPlanAuthorized,
    required this.labName,
    this.location,
    this.managedImageId,
    this.managedSnapshotId,
    this.name,
    required this.resourceGroupName,
    this.tags,
    this.vhd,
    this.vm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author,
      'customImagePlan': ?pulumi.Input.mapOptionalInputValue<CustomImagePropertiesFromPlan, Map<String, dynamic>>(customImagePlan, (value) => value.toMap()),
      'dataDiskStorageInfo': ?pulumi.Input.mapOptionalInputValue<List<DataDiskStorageTypeInfo>, List<Map<String, dynamic>>>(dataDiskStorageInfo, (value) => pulumi.Input.encodeList<DataDiskStorageTypeInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'isPlanAuthorized': ?isPlanAuthorized,
      'labName': labName,
      'location': ?location,
      'managedImageId': ?managedImageId,
      'managedSnapshotId': ?managedSnapshotId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vhd': ?pulumi.Input.mapOptionalInputValue<CustomImagePropertiesCustom, Map<String, dynamic>>(vhd, (value) => value.toMap()),
      'vm': ?pulumi.Input.mapOptionalInputValue<CustomImagePropertiesFromVm, Map<String, dynamic>>(vm, (value) => value.toMap()),
    };
  }

  factory CustomImageArgs.fromMap(Map<String, dynamic> map) {
    return CustomImageArgs(
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customImagePlan: (() { final guardedValue = map['customImagePlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomImagePropertiesFromPlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataDiskStorageInfo: (() { final guardedValue = map['dataDiskStorageInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataDiskStorageTypeInfo>(guardedValue, (value) => DataDiskStorageTypeInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPlanAuthorized: (() { final guardedValue = map['isPlanAuthorized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedImageId: (() { final guardedValue = map['managedImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedSnapshotId: (() { final guardedValue = map['managedSnapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vhd: (() { final guardedValue = map['vhd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomImagePropertiesCustom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vm: (() { final guardedValue = map['vm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomImagePropertiesFromVm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

