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
      'osState': pulumi.Input.mapInputValue<OperatingSystemStateTypes, String>(osState, (value) => value.wireValue),
      'osType': pulumi.Input.mapInputValue<OperatingSystemTypes, String>(osType, (value) => value.wireValue),
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
      allowUpdateImage: (() { final guardedValue = map['allowUpdateImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disallowed: (() { final guardedValue = map['disallowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Disallowed.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endOfLifeDate: (() { final guardedValue = map['endOfLifeDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eula: (() { final guardedValue = map['eula']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GalleryImageFeature>(guardedValue, (value) => GalleryImageFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      galleryImageName: (() { final guardedValue = map['galleryImageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleryName: pulumi.Input.fromValue(map['galleryName'] as String),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifier: pulumi.Input.fromValue(GalleryImageIdentifier.fromMap((map['identifier']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osState: pulumi.Input.fromValue(OperatingSystemStateTypes.fromValue(map['osState']! as String)),
      osType: pulumi.Input.fromValue(OperatingSystemTypes.fromValue(map['osType']! as String)),
      privacyStatementUri: (() { final guardedValue = map['privacyStatementUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purchasePlan: (() { final guardedValue = map['purchasePlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImagePurchasePlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recommended: (() { final guardedValue = map['recommended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecommendedMachineConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      releaseNoteUri: (() { final guardedValue = map['releaseNoteUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

