// ignore_for_file: unused_element, unnecessary_cast

import 'image_reference_response.dart';
import 'image_validation_error_details_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDevBoxDefinition.
class GetDevBoxDefinitionResult {
  /// Image reference information for the currently active image (only populated during updates).
  final ImageReferenceResponse activeImageReference;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Indicates whether Dev Boxes created with this definition are capable of hibernation. Not all images are capable of supporting hibernation. To find out more see https://aka.ms/devbox/hibernate
  final String? hibernateSupport;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Image reference information.
  final ImageReferenceResponse imageReference;
  /// Details for image validator error. Populated when the image validation is not successful.
  final ImageValidationErrorDetailsResponse imageValidationErrorDetails;
  /// Validation status of the configured image.
  final String imageValidationStatus;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The storage type used for the Operating System disk of Dev Boxes created using this definition.
  final String? osStorageType;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// The SKU for Dev Boxes created using this definition.
  final SkuResponse sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Validation status for the Dev Box Definition.
  final String validationStatus;

  /// Creates a new [GetDevBoxDefinitionResult].
  /// [activeImageReference] Image reference information for the currently active image (only populated during updates).
  /// [azureApiVersion] The Azure API version of the resource.
  /// [hibernateSupport] Indicates whether Dev Boxes created with this definition are capable of hibernation. Not all images are capable of supporting hibernation. To find out more see https://aka.ms/devbox/hibernate
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [imageReference] Image reference information.
  /// [imageValidationErrorDetails] Details for image validator error. Populated when the image validation is not successful.
  /// [imageValidationStatus] Validation status of the configured image.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [osStorageType] The storage type used for the Operating System disk of Dev Boxes created using this definition.
  /// [provisioningState] The provisioning state of the resource.
  /// [sku] The SKU for Dev Boxes created using this definition.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [validationStatus] Validation status for the Dev Box Definition.
  GetDevBoxDefinitionResult({
    required this.activeImageReference,
    required this.azureApiVersion,
    this.hibernateSupport,
    required this.id,
    required this.imageReference,
    required this.imageValidationErrorDetails,
    required this.imageValidationStatus,
    required this.location,
    required this.name,
    this.osStorageType,
    required this.provisioningState,
    required this.sku,
    required this.systemData,
    this.tags,
    required this.type,
    required this.validationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeImageReference': activeImageReference.toMap(),
      'azureApiVersion': azureApiVersion,
      'hibernateSupport': ?hibernateSupport,
      'id': id,
      'imageReference': imageReference.toMap(),
      'imageValidationErrorDetails': imageValidationErrorDetails.toMap(),
      'imageValidationStatus': imageValidationStatus,
      'location': location,
      'name': name,
      'osStorageType': ?osStorageType,
      'provisioningState': provisioningState,
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'validationStatus': validationStatus,
    };
  }

  factory GetDevBoxDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetDevBoxDefinitionResult(
      activeImageReference: ImageReferenceResponse.fromMap((map['activeImageReference']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      hibernateSupport: (() { final guardedValue = map['hibernateSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      imageReference: ImageReferenceResponse.fromMap((map['imageReference']! as Map).cast<String, dynamic>()),
      imageValidationErrorDetails: ImageValidationErrorDetailsResponse.fromMap((map['imageValidationErrorDetails']! as Map).cast<String, dynamic>()),
      imageValidationStatus: map['imageValidationStatus'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      osStorageType: (() { final guardedValue = map['osStorageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      validationStatus: map['validationStatus'] as String,
    );
  }
}

