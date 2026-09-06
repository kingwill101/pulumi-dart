// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getImage.
class GetImageResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The image component id.
  final String? componentId;
  /// The image description.
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Image as a UTF-8 encoded base 64 string on image create. This field contains the image URI on image reads.
  final String? image;
  /// Image ID
  final String? imageId;
  /// Image name
  final String? imageName;
  /// The image type.
  final String? imageType;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Regional data boundary for an image
  final String? regionalDataBoundary;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Location the image
  final String? uri;

  /// Creates a new [GetImageResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [componentId] The image component id.
  /// [description] The image description.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [image] Image as a UTF-8 encoded base 64 string on image create. This field contains the image URI on image reads.
  /// [imageId] Image ID
  /// [imageName] Image name
  /// [imageType] The image type.
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [regionalDataBoundary] Regional data boundary for an image
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uri] Location the image
  const GetImageResult({
    this.azureApiVersion,
    this.componentId,
    this.description,
    this.id,
    this.image,
    this.imageId,
    this.imageName,
    this.imageType,
    this.name,
    this.provisioningState,
    this.regionalDataBoundary,
    this.systemData,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'componentId': ?componentId,
      'description': ?description,
      'id': ?id,
      'image': ?image,
      'imageId': ?imageId,
      'imageName': ?imageName,
      'imageType': ?imageType,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'regionalDataBoundary': ?regionalDataBoundary,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'uri': ?uri,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      componentId: (() { final guardedValue = map['componentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionalDataBoundary: (() { final guardedValue = map['regionalDataBoundary']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
