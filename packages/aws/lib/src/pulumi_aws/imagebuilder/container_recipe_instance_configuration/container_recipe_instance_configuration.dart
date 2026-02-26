// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../container_recipe_instance_configuration_block_device_mapping/container_recipe_instance_configuration_block_device_mapping.dart';

class ContainerRecipeInstanceConfiguration {
  /// Configuration block(s) with block device mappings for the container recipe. Detailed below.
  final List<ContainerRecipeInstanceConfigurationBlockDeviceMapping>?
      blockDeviceMappings;

  /// The AMI ID to use as the base image for a container build and test instance. If not specified, Image Builder will use the appropriate ECS-optimized AMI as a base image.
  final String? image;

  ContainerRecipeInstanceConfiguration({
    this.blockDeviceMappings,
    this.image,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blockDeviceMappingsValue = blockDeviceMappings;
    if (blockDeviceMappingsValue != null) {
      map['blockDeviceMappings'] = Input.encodeList<
              ContainerRecipeInstanceConfigurationBlockDeviceMapping,
              Map<String, dynamic>>(
          blockDeviceMappingsValue, (value) => value.toMap());
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue;
    }
    return map;
  }

  factory ContainerRecipeInstanceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ContainerRecipeInstanceConfiguration(
      blockDeviceMappings: map['blockDeviceMappings'] == null
          ? null
          : Input.decodeList<
                  ContainerRecipeInstanceConfigurationBlockDeviceMapping>(
              map['blockDeviceMappings'],
              (value) => ContainerRecipeInstanceConfigurationBlockDeviceMapping
                  .fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : map['image'] as String,
    );
  }
}
