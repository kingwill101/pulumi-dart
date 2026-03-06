// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disallowed_response.dart';
import 'gallery_image_feature_response.dart';
import 'gallery_image_identifier_response.dart';
import 'image_purchase_plan_response.dart';
import 'recommended_machine_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGalleryImage.
class GetGalleryImageResult {
  /// Optional. Must be set to true if the gallery image features are being updated.
  final bool? allowUpdateImage;
  /// The architecture of the image. Applicable to OS disks only.
  final String? architecture;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The description of this gallery image definition resource. This property is updatable.
  final String? description;
  /// Describes the disallowed disk types.
  final DisallowedResponse? disallowed;
  /// The end of life date of the gallery image definition. This property can be used for decommissioning purposes. This property is updatable.
  final String? endOfLifeDate;
  /// The Eula agreement for the gallery image definition.
  final String? eula;
  /// A list of gallery image features.
  final List<GalleryImageFeatureResponse>? features;
  /// The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  final String? hyperVGeneration;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// This is the gallery image definition identifier.
  final GalleryImageIdentifierResponse identifier;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// This property allows the user to specify whether the virtual machines created under this image are 'Generalized' or 'Specialized'.
  final String osState;
  /// This property allows you to specify the type of the OS that is included in the disk when creating a VM from a managed image. Possible values are: **Windows,** **Linux.**
  final String osType;
  /// The privacy statement uri.
  final String? privacyStatementUri;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// Describes the gallery image definition purchase plan. This is used by marketplace images.
  final ImagePurchasePlanResponse? purchasePlan;
  /// The properties describe the recommended machine configuration for this Image Definition. These properties are updatable.
  final RecommendedMachineConfigurationResponse? recommended;
  /// The release note uri.
  final String? releaseNoteUri;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGalleryImageResult].
  /// [allowUpdateImage] Optional. Must be set to true if the gallery image features are being updated.
  /// [architecture] The architecture of the image. Applicable to OS disks only.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of this gallery image definition resource. This property is updatable.
  /// [disallowed] Describes the disallowed disk types.
  /// [endOfLifeDate] The end of life date of the gallery image definition. This property can be used for decommissioning purposes. This property is updatable.
  /// [eula] The Eula agreement for the gallery image definition.
  /// [features] A list of gallery image features.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identifier] This is the gallery image definition identifier.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [osState] This property allows the user to specify whether the virtual machines created under this image are 'Generalized' or 'Specialized'.
  /// [osType] This property allows you to specify the type of the OS that is included in the disk when creating a VM from a managed image. Possible values are: **Windows,** **Linux.**
  /// [privacyStatementUri] The privacy statement uri.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [purchasePlan] Describes the gallery image definition purchase plan. This is used by marketplace images.
  /// [recommended] The properties describe the recommended machine configuration for this Image Definition. These properties are updatable.
  /// [releaseNoteUri] The release note uri.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGalleryImageResult({
    this.allowUpdateImage,
    this.architecture,
    required this.azureApiVersion,
    this.description,
    this.disallowed,
    this.endOfLifeDate,
    this.eula,
    this.features,
    this.hyperVGeneration,
    required this.id,
    required this.identifier,
    required this.location,
    required this.name,
    required this.osState,
    required this.osType,
    this.privacyStatementUri,
    required this.provisioningState,
    this.purchasePlan,
    this.recommended,
    this.releaseNoteUri,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUpdateImage': ?allowUpdateImage,
      'architecture': ?architecture,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'disallowed': ?disallowed?.toMap(),
      'endOfLifeDate': ?endOfLifeDate,
      'eula': ?eula,
      'features': ?(() { final guardedValue = features; if (guardedValue == null) return null; return pulumi.Input.encodeList<GalleryImageFeatureResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'hyperVGeneration': ?hyperVGeneration,
      'id': id,
      'identifier': identifier.toMap(),
      'location': location,
      'name': name,
      'osState': osState,
      'osType': osType,
      'privacyStatementUri': ?privacyStatementUri,
      'provisioningState': provisioningState,
      'purchasePlan': ?purchasePlan?.toMap(),
      'recommended': ?recommended?.toMap(),
      'releaseNoteUri': ?releaseNoteUri,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetGalleryImageResult.fromMap(Map<String, dynamic> map) {
    return GetGalleryImageResult(
      allowUpdateImage: (() { final guardedValue = map['allowUpdateImage']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disallowed: (() { final guardedValue = map['disallowed']; if (guardedValue == null) return null; return DisallowedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endOfLifeDate: (() { final guardedValue = map['endOfLifeDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eula: (() { final guardedValue = map['eula']; if (guardedValue == null) return null; return guardedValue as String; })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GalleryImageFeatureResponse>(guardedValue, (value) => GalleryImageFeatureResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identifier: GalleryImageIdentifierResponse.fromMap((map['identifier']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      osState: map['osState'] as String,
      osType: map['osType'] as String,
      privacyStatementUri: (() { final guardedValue = map['privacyStatementUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      purchasePlan: (() { final guardedValue = map['purchasePlan']; if (guardedValue == null) return null; return ImagePurchasePlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      recommended: (() { final guardedValue = map['recommended']; if (guardedValue == null) return null; return RecommendedMachineConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      releaseNoteUri: (() { final guardedValue = map['releaseNoteUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

