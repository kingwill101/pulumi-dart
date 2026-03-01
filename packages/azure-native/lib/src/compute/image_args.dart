// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'image_storage_profile.dart';
import 'sub_resource.dart';

/// {@template pulumi_compute_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_compute_image_args_doc}
class ImageArgs {
  /// The extended location of the Image.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Specifies the HyperVGenerationType of the VirtualMachine created from the image. From API Version 2019-03-01 if the image source is a blob, then we need the user to specify the value, if the source is managed resource like disk or snapshot, we may require the user to specify the property if we cannot deduce it from the source managed resource.
  final pulumi.Input<String>? hyperVGeneration;
  /// The name of the image.
  final pulumi.Input<String>? imageName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The source virtual machine from which Image is created.
  final pulumi.Input<SubResource>? sourceVirtualMachine;
  /// Specifies the storage settings for the virtual machine disks.
  final pulumi.Input<ImageStorageProfile>? storageProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ImageArgs].
  /// [extendedLocation] The extended location of the Image.
  /// [hyperVGeneration] Specifies the HyperVGenerationType of the VirtualMachine created from the image. From API Version 2019-03-01 if the image source is a blob, then we need the user to specify the value, if the source is managed resource like disk or snapshot, we may require the user to specify the property if we cannot deduce it from the source managed resource.
  /// [imageName] The name of the image.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceVirtualMachine] The source virtual machine from which Image is created.
  /// [storageProfile] Specifies the storage settings for the virtual machine disks.
  /// [tags] Resource tags.
  ImageArgs({
    ExtendedLocation? extendedLocation,
    String? hyperVGeneration,
    String? imageName,
    String? location,
    required String resourceGroupName,
    SubResource? sourceVirtualMachine,
    ImageStorageProfile? storageProfile,
    Map<String, String>? tags,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      hyperVGeneration = pulumi.Input.asOptionalInput<String>(hyperVGeneration),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceVirtualMachine = pulumi.Input.asOptionalInput<SubResource>(sourceVirtualMachine),
      storageProfile = pulumi.Input.asOptionalInput<ImageStorageProfile>(storageProfile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hyperVGeneration': ?hyperVGeneration,
      'imageName': ?imageName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sourceVirtualMachine': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(sourceVirtualMachine, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<ImageStorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : map['hyperVGeneration'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sourceVirtualMachine: map['sourceVirtualMachine'] == null ? null : SubResource.fromMap((map['sourceVirtualMachine'] as Map).cast<String, dynamic>()),
      storageProfile: map['storageProfile'] == null ? null : ImageStorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

