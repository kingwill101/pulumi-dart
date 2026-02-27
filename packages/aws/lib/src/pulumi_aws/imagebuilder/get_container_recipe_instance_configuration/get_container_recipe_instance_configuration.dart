// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_container_recipe_instance_configuration_block_device_mapping/get_container_recipe_instance_configuration_block_device_mapping.dart';

class GetContainerRecipeInstanceConfiguration {
  /// Set of objects with block device mappings for the instance configuration.
  final List<GetContainerRecipeInstanceConfigurationBlockDeviceMapping>
      blockDeviceMappings;

  /// AMI ID of the base image for container build and test instance.
  final String image;

  GetContainerRecipeInstanceConfiguration({
    required this.blockDeviceMappings,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blockDeviceMappings'] = pulumi.Input.encodeList<
        GetContainerRecipeInstanceConfigurationBlockDeviceMapping,
        Map<String, dynamic>>(blockDeviceMappings, (value) => value.toMap());
    map['image'] = image;
    return map;
  }

  factory GetContainerRecipeInstanceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetContainerRecipeInstanceConfiguration(
      blockDeviceMappings: pulumi.Input.decodeList<
              GetContainerRecipeInstanceConfigurationBlockDeviceMapping>(
          map['blockDeviceMappings'],
          (value) =>
              GetContainerRecipeInstanceConfigurationBlockDeviceMapping.fromMap(
                  (value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
    );
  }
}
