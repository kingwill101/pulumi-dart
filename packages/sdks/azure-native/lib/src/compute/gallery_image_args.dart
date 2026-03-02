// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disallowed.dart';
import 'gallery_image_feature.dart';
import 'gallery_image_identifier.dart';
import 'image_purchase_plan.dart';
import 'operating_system_state_types.dart';
import 'operating_system_types.dart';
import 'recommended_machine_configuration.dart';

/// {@template pulumi_compute_gallery_image_args_doc}
/// The set of arguments for GalleryImage.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_image_args_doc}
class GalleryImageArgs {
  /// Optional. Must be set to true if the gallery image features are being updated.
  final pulumi.Input<bool>? allowUpdateImage;
  /// The architecture of the image. Applicable to OS disks only.
  final pulumi.Input<String>? architecture;
  /// The description of this gallery image definition resource. This property is updatable.
  final pulumi.Input<String>? description;
  /// Describes the disallowed disk types.
  final pulumi.Input<Disallowed>? disallowed;
  /// The end of life date of the gallery image definition. This property can be used for decommissioning purposes. This property is updatable.
  final pulumi.Input<String>? endOfLifeDate;
  /// The Eula agreement for the gallery image definition.
  final pulumi.Input<String>? eula;
  /// A list of gallery image features.
  final pulumi.Input<List<GalleryImageFeature>>? features;
  /// The name of the gallery image definition to be retrieved.
  final pulumi.Input<String>? galleryImageName;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  final pulumi.Input<String>? hyperVGeneration;
  /// This is the gallery image definition identifier.
  final pulumi.Input<GalleryImageIdentifier> identifier;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// This property allows the user to specify whether the virtual machines created under this image are 'Generalized' or 'Specialized'.
  final pulumi.Input<OperatingSystemStateTypes> osState;
  /// This property allows you to specify the type of the OS that is included in the disk when creating a VM from a managed image. Possible values are: **Windows,** **Linux.**
  final pulumi.Input<OperatingSystemTypes> osType;
  /// The privacy statement uri.
  final pulumi.Input<String>? privacyStatementUri;
  /// Describes the gallery image definition purchase plan. This is used by marketplace images.
  final pulumi.Input<ImagePurchasePlan>? purchasePlan;
  /// The properties describe the recommended machine configuration for this Image Definition. These properties are updatable.
  final pulumi.Input<RecommendedMachineConfiguration>? recommended;
  /// The release note uri.
  final pulumi.Input<String>? releaseNoteUri;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GalleryImageArgs].
  /// [allowUpdateImage] Optional. Must be set to true if the gallery image features are being updated.
  /// [architecture] The architecture of the image. Applicable to OS disks only.
  /// [description] The description of this gallery image definition resource. This property is updatable.
  /// [disallowed] Describes the disallowed disk types.
  /// [endOfLifeDate] The end of life date of the gallery image definition. This property can be used for decommissioning purposes. This property is updatable.
  /// [eula] The Eula agreement for the gallery image definition.
  /// [features] A list of gallery image features.
  /// [galleryImageName] The name of the gallery image definition to be retrieved.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  /// [identifier] This is the gallery image definition identifier.
  /// [location] The geo-location where the resource lives
  /// [osState] This property allows the user to specify whether the virtual machines created under this image are 'Generalized' or 'Specialized'.
  /// [osType] This property allows you to specify the type of the OS that is included in the disk when creating a VM from a managed image. Possible values are: **Windows,** **Linux.**
  /// [privacyStatementUri] The privacy statement uri.
  /// [purchasePlan] Describes the gallery image definition purchase plan. This is used by marketplace images.
  /// [recommended] The properties describe the recommended machine configuration for this Image Definition. These properties are updatable.
  /// [releaseNoteUri] The release note uri.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  GalleryImageArgs({
    this.allowUpdateImage,
    this.architecture,
    this.description,
    this.disallowed,
    this.endOfLifeDate,
    this.eula,
    this.features,
    this.galleryImageName,
    required this.galleryName,
    this.hyperVGeneration,
    required this.identifier,
    this.location,
    required this.osState,
    required this.osType,
    this.privacyStatementUri,
    this.purchasePlan,
    this.recommended,
    this.releaseNoteUri,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUpdateImage': ?allowUpdateImage,
      'architecture': ?architecture,
      'description': ?description,
      'disallowed': ?pulumi.Input.mapOptionalInputValue<Disallowed, Map<String, dynamic>>(disallowed, (value) => value.toMap()),
      'endOfLifeDate': ?endOfLifeDate,
      'eula': ?eula,
      'features': ?pulumi.Input.mapOptionalInputValue<List<GalleryImageFeature>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<GalleryImageFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'galleryImageName': ?galleryImageName,
      'galleryName': galleryName,
      'hyperVGeneration': ?hyperVGeneration,
      'identifier': pulumi.Input.mapInputValue<GalleryImageIdentifier, Map<String, dynamic>>(identifier, (value) => value.toMap()),
      'location': ?location,
      'osState': pulumi.Input.mapInputValue<OperatingSystemStateTypes, String>(osState, (value) => value.value),
      'osType': pulumi.Input.mapInputValue<OperatingSystemTypes, String>(osType, (value) => value.value),
      'privacyStatementUri': ?privacyStatementUri,
      'purchasePlan': ?pulumi.Input.mapOptionalInputValue<ImagePurchasePlan, Map<String, dynamic>>(purchasePlan, (value) => value.toMap()),
      'recommended': ?pulumi.Input.mapOptionalInputValue<RecommendedMachineConfiguration, Map<String, dynamic>>(recommended, (value) => value.toMap()),
      'releaseNoteUri': ?releaseNoteUri,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GalleryImageArgs.fromMap(Map<String, dynamic> map) {
    return GalleryImageArgs(
      allowUpdateImage: map['allowUpdateImage'] == null ? null : (map['allowUpdateImage']! as bool).input(),
      architecture: map['architecture'] == null ? null : (map['architecture']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disallowed: map['disallowed'] == null ? null : (Disallowed.fromMap((map['disallowed']! as Map).cast<String, dynamic>())).input(),
      endOfLifeDate: map['endOfLifeDate'] == null ? null : (map['endOfLifeDate']! as String).input(),
      eula: map['eula'] == null ? null : (map['eula']! as String).input(),
      features: map['features'] == null ? null : (pulumi.Input.decodeList<GalleryImageFeature>(map['features']!, (value) => GalleryImageFeature.fromMap((value as Map).cast<String, dynamic>()))).input(),
      galleryImageName: map['galleryImageName'] == null ? null : (map['galleryImageName']! as String).input(),
      galleryName: (map['galleryName'] as String).input(),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : (map['hyperVGeneration']! as String).input(),
      identifier: (GalleryImageIdentifier.fromMap((map['identifier'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      osState: (OperatingSystemStateTypes.fromValue(map['osState'] as String)).input(),
      osType: (OperatingSystemTypes.fromValue(map['osType'] as String)).input(),
      privacyStatementUri: map['privacyStatementUri'] == null ? null : (map['privacyStatementUri']! as String).input(),
      purchasePlan: map['purchasePlan'] == null ? null : (ImagePurchasePlan.fromMap((map['purchasePlan']! as Map).cast<String, dynamic>())).input(),
      recommended: map['recommended'] == null ? null : (RecommendedMachineConfiguration.fromMap((map['recommended']! as Map).cast<String, dynamic>())).input(),
      releaseNoteUri: map['releaseNoteUri'] == null ? null : (map['releaseNoteUri']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

