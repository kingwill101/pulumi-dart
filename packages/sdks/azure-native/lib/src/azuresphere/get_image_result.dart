// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getImage.
class GetImageResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The image component id.
  final String componentId;
  /// The image description.
  final String description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Image as a UTF-8 encoded base 64 string on image create. This field contains the image URI on image reads.
  final String? image;
  /// Image ID
  final String? imageId;
  /// Image name
  final String imageName;
  /// The image type.
  final String imageType;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Regional data boundary for an image
  final String? regionalDataBoundary;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Location the image
  final String uri;

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
  GetImageResult({
    required this.azureApiVersion,
    required this.componentId,
    required this.description,
    required this.id,
    this.image,
    this.imageId,
    required this.imageName,
    required this.imageType,
    required this.name,
    required this.provisioningState,
    this.regionalDataBoundary,
    required this.systemData,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'componentId': componentId,
      'description': description,
      'id': id,
      'image': ?image,
      'imageId': ?imageId,
      'imageName': imageName,
      'imageType': imageType,
      'name': name,
      'provisioningState': provisioningState,
      'regionalDataBoundary': ?regionalDataBoundary,
      'systemData': systemData.toMap(),
      'type': type,
      'uri': uri,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      azureApiVersion: map['azureApiVersion'] as String,
      componentId: map['componentId'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      image: map['image'] == null ? null : map['image'] as String,
      imageId: map['imageId'] == null ? null : map['imageId'] as String,
      imageName: map['imageName'] as String,
      imageType: map['imageType'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      regionalDataBoundary: map['regionalDataBoundary'] == null ? null : map['regionalDataBoundary'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      uri: map['uri'] as String,
    );
  }
}

