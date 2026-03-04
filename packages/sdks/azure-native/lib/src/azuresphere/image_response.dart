// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';

/// An image resource belonging to a catalog resource.
class ImageResponse {
  /// The image component id.
  final pulumi.Input<String> componentId;

  /// The image description.
  final pulumi.Input<String> description;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;

  /// Image as a UTF-8 encoded base 64 string on image create. This field contains the image URI on image reads.
  final pulumi.Input<String>? image;

  /// Image ID
  final pulumi.Input<String>? imageId;

  /// Image name
  final pulumi.Input<String> imageName;

  /// The image type.
  final pulumi.Input<String> imageType;

  /// The name of the resource
  final pulumi.Input<String> name;

  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Regional data boundary for an image
  final pulumi.Input<String>? regionalDataBoundary;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Location the image
  final pulumi.Input<String> uri;

  /// Creates a new [ImageResponse].
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
  ImageResponse({
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
      'systemData':
          pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(
            systemData,
            (value) => value.toMap(),
          ),
      'type': type,
      'uri': uri,
    };
  }

  factory ImageResponse.fromMap(Map<String, dynamic> map) {
    return ImageResponse(
      componentId: pulumi.Input.fromValue(map['componentId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageId: (() {
        final guardedValue = map['imageId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      imageType: pulumi.Input.fromValue(map['imageType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      regionalDataBoundary: (() {
        final guardedValue = map['regionalDataBoundary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      systemData: pulumi.Input.fromValue(
        SystemDataResponse.fromMap(
          (map['systemData']! as Map).cast<String, dynamic>(),
        ),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
