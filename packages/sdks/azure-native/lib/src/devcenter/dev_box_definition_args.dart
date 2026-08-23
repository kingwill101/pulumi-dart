// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_reference.dart';
import 'sku.dart';

/// {@template pulumi_devcenter_dev_box_definition_args_doc}
/// The set of arguments for DevBoxDefinition.
/// {@endtemplate}
/// {@macro pulumi_devcenter_dev_box_definition_args_doc}
class DevBoxDefinitionArgs {
  /// The name of the Dev Box definition.
  final pulumi.Input<String>? devBoxDefinitionName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// Indicates whether Dev Boxes created with this definition are capable of hibernation. Not all images are capable of supporting hibernation. To find out more see https://aka.ms/devbox/hibernate
  final pulumi.Input<String>? hibernateSupport;
  /// Image reference information.
  final pulumi.Input<ImageReference> imageReference;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The storage type used for the Operating System disk of Dev Boxes created using this definition.
  final pulumi.Input<String>? osStorageType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU for Dev Boxes created using this definition.
  final pulumi.Input<Sku> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DevBoxDefinitionArgs].
  /// [devBoxDefinitionName] The name of the Dev Box definition.
  /// [devCenterName] The name of the devcenter.
  /// [hibernateSupport] Indicates whether Dev Boxes created with this definition are capable of hibernation. Not all images are capable of supporting hibernation. To find out more see https://aka.ms/devbox/hibernate
  /// [imageReference] Image reference information.
  /// [location] The geo-location where the resource lives
  /// [osStorageType] The storage type used for the Operating System disk of Dev Boxes created using this definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU for Dev Boxes created using this definition.
  /// [tags] Resource tags.
  const DevBoxDefinitionArgs({
    this.devBoxDefinitionName,
    required this.devCenterName,
    this.hibernateSupport,
    required this.imageReference,
    this.location,
    this.osStorageType,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devBoxDefinitionName': ?devBoxDefinitionName,
      'devCenterName': devCenterName,
      'hibernateSupport': ?hibernateSupport,
      'imageReference': pulumi.Input.mapInputValue<ImageReference, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'location': ?location,
      'osStorageType': ?osStorageType,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DevBoxDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return DevBoxDefinitionArgs(
      devBoxDefinitionName: (() { final guardedValue = map['devBoxDefinitionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      hibernateSupport: (() { final guardedValue = map['hibernateSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageReference: pulumi.Input.fromValue(ImageReference.fromMap((map['imageReference']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osStorageType: (() { final guardedValue = map['osStorageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
