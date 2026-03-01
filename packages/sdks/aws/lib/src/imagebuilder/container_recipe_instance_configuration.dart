// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_recipe_instance_configuration_block_device_mapping.dart';

class ContainerRecipeInstanceConfiguration {
  /// Configuration block(s) with block device mappings for the container recipe. Detailed below.
  final List<ContainerRecipeInstanceConfigurationBlockDeviceMapping>? blockDeviceMappings;
  /// The AMI ID to use as the base image for a container build and test instance. If not specified, Image Builder will use the appropriate ECS-optimized AMI as a base image.
  final String? image;

  /// Creates a new [ContainerRecipeInstanceConfiguration].
  /// [blockDeviceMappings] Configuration block(s) with block device mappings for the container recipe. Detailed below.
  /// [image] The AMI ID to use as the base image for a container build and test instance. If not specified, Image Builder will use the appropriate ECS-optimized AMI as a base image.
  ContainerRecipeInstanceConfiguration({
    this.blockDeviceMappings,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockDeviceMappings': ?blockDeviceMappings == null ? null : pulumi.Input.encodeList<ContainerRecipeInstanceConfigurationBlockDeviceMapping, Map<String, dynamic>>(blockDeviceMappings!, (value) => value.toMap()),
      'image': ?image,
    };
  }

  factory ContainerRecipeInstanceConfiguration.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeInstanceConfiguration(
      blockDeviceMappings: map['blockDeviceMappings'] == null ? null : pulumi.Input.decodeList<ContainerRecipeInstanceConfigurationBlockDeviceMapping>(map['blockDeviceMappings'], (value) => ContainerRecipeInstanceConfigurationBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : map['image'] as String,
    );
  }
}

