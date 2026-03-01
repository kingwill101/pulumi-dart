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
    String? author,
    CustomImagePropertiesFromPlan? customImagePlan,
    List<DataDiskStorageTypeInfo>? dataDiskStorageInfo,
    String? description,
    bool? isPlanAuthorized,
    required String labName,
    String? location,
    String? managedImageId,
    String? managedSnapshotId,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
    CustomImagePropertiesCustom? vhd,
    CustomImagePropertiesFromVm? vm,
  }) :
      author = pulumi.Input.asOptionalInput<String>(author),
      customImagePlan = pulumi.Input.asOptionalInput<CustomImagePropertiesFromPlan>(customImagePlan),
      dataDiskStorageInfo = pulumi.Input.asOptionalInput<List<DataDiskStorageTypeInfo>>(dataDiskStorageInfo),
      description = pulumi.Input.asOptionalInput<String>(description),
      isPlanAuthorized = pulumi.Input.asOptionalInput<bool>(isPlanAuthorized),
      labName = pulumi.Input.asInput<String>(labName),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedImageId = pulumi.Input.asOptionalInput<String>(managedImageId),
      managedSnapshotId = pulumi.Input.asOptionalInput<String>(managedSnapshotId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vhd = pulumi.Input.asOptionalInput<CustomImagePropertiesCustom>(vhd),
      vm = pulumi.Input.asOptionalInput<CustomImagePropertiesFromVm>(vm);

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
      author: map['author'] == null ? null : map['author'] as String,
      customImagePlan: map['customImagePlan'] == null ? null : CustomImagePropertiesFromPlan.fromMap((map['customImagePlan'] as Map).cast<String, dynamic>()),
      dataDiskStorageInfo: map['dataDiskStorageInfo'] == null ? null : pulumi.Input.decodeList<DataDiskStorageTypeInfo>(map['dataDiskStorageInfo'], (value) => DataDiskStorageTypeInfo.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      isPlanAuthorized: map['isPlanAuthorized'] == null ? null : map['isPlanAuthorized'] as bool,
      labName: map['labName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managedImageId: map['managedImageId'] == null ? null : map['managedImageId'] as String,
      managedSnapshotId: map['managedSnapshotId'] == null ? null : map['managedSnapshotId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vhd: map['vhd'] == null ? null : CustomImagePropertiesCustom.fromMap((map['vhd'] as Map).cast<String, dynamic>()),
      vm: map['vm'] == null ? null : CustomImagePropertiesFromVm.fromMap((map['vm'] as Map).cast<String, dynamic>()),
    );
  }
}

