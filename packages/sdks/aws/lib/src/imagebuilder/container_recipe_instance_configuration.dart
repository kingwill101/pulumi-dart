// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_recipe_instance_configuration_block_device_mapping.dart';

class ContainerRecipeInstanceConfiguration {
  /// Configuration block(s) with block device mappings for the container recipe. Detailed below.
  final pulumi.Input<List<ContainerRecipeInstanceConfigurationBlockDeviceMapping>>? blockDeviceMappings;
  /// The AMI ID to use as the base image for a container build and test instance. If not specified, Image Builder will use the appropriate ECS-optimized AMI as a base image.
  final pulumi.Input<String>? image;

  /// Creates a new [ContainerRecipeInstanceConfiguration].
  /// [blockDeviceMappings] Configuration block(s) with block device mappings for the container recipe. Detailed below.
  /// [image] The AMI ID to use as the base image for a container build and test instance. If not specified, Image Builder will use the appropriate ECS-optimized AMI as a base image.
  const ContainerRecipeInstanceConfiguration({
    this.blockDeviceMappings,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockDeviceMappings': ?pulumi.Input.mapOptionalInputValue<List<ContainerRecipeInstanceConfigurationBlockDeviceMapping>, List<Map<String, dynamic>>>(blockDeviceMappings, (value) => pulumi.Input.encodeList<ContainerRecipeInstanceConfigurationBlockDeviceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
    };
  }

  factory ContainerRecipeInstanceConfiguration.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeInstanceConfiguration(
      blockDeviceMappings: (() { final guardedValue = map['blockDeviceMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerRecipeInstanceConfigurationBlockDeviceMapping>(guardedValue, (value) => ContainerRecipeInstanceConfigurationBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
