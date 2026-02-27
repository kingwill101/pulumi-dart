// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../image_recipe_block_device_mapping/image_recipe_block_device_mapping.dart';
import '../image_recipe_component/image_recipe_component.dart';
import '../image_recipe_systems_manager_agent/image_recipe_systems_manager_agent.dart';

/// The set of arguments for ImageRecipe.
class ImageRecipeArgs {
  /// Tags that are applied to the AMI that Image Builder creates during the Build phase prior to image distribution. Maximum of 50 tags.
  final pulumi.Input<Map<String, String>>? amiTags;

  /// Configuration block(s) with block device mappings for the image recipe. Detailed below.
  final pulumi.Input<List<ImageRecipeBlockDeviceMapping>>? blockDeviceMappings;

  /// Ordered configuration block(s) with components for the image recipe. Detailed below.
  final pulumi.Input<List<ImageRecipeComponent>> components;

  /// Description of the image recipe.
  final pulumi.Input<String>? description;

  /// Name of the image recipe.
  final pulumi.Input<String>? name;

  /// The image recipe uses this image as a base from which to build your customized image. The value can be the base image ARN, an AMI ID, or an SSM Parameter referencing the AMI. For an SSM Parameter, enter the prefix `ssm:`, followed by the parameter name or ARN.
  final pulumi.Input<String> parentImage;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for the Systems Manager Agent installed by default by Image Builder. Detailed below.
  final pulumi.Input<ImageRecipeSystemsManagerAgent>? systemsManagerAgent;

  /// Key-value map of resource tags for the image recipe. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Base64 encoded user data. Use this to provide commands or a command script to run when you launch your build instance.
  final pulumi.Input<String>? userDataBase64;

  /// The semantic version of the image recipe, which specifies the version in the following format, with numeric values in each position to indicate a specific version: major.minor.patch. For example: 1.0.0.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> version;

  /// The working directory to be used during build and test workflows.
  final pulumi.Input<String>? workingDirectory;

  ImageRecipeArgs({
    this.amiTags,
    this.blockDeviceMappings,
    required this.components,
    this.description,
    this.name,
    required this.parentImage,
    this.region,
    this.systemsManagerAgent,
    this.tags,
    this.userDataBase64,
    required this.version,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amiTagsValue = amiTags;
    if (amiTagsValue != null) {
      map['amiTags'] = amiTagsValue;
    }
    final blockDeviceMappingsValue = blockDeviceMappings;
    if (blockDeviceMappingsValue != null) {
      map['blockDeviceMappings'] = pulumi.Input.mapOptionalInputValue<
              List<ImageRecipeBlockDeviceMapping>, List<Map<String, dynamic>>>(
          blockDeviceMappingsValue,
          (value) => pulumi.Input.encodeList<ImageRecipeBlockDeviceMapping,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['components'] = pulumi.Input.mapInputValue<List<ImageRecipeComponent>,
            List<Map<String, dynamic>>>(
        components,
        (value) =>
            pulumi.Input.encodeList<ImageRecipeComponent, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parentImage'] = parentImage;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final systemsManagerAgentValue = systemsManagerAgent;
    if (systemsManagerAgentValue != null) {
      map['systemsManagerAgent'] = pulumi.Input.mapOptionalInputValue<
              ImageRecipeSystemsManagerAgent, Map<String, dynamic>>(
          systemsManagerAgentValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userDataBase64Value = userDataBase64;
    if (userDataBase64Value != null) {
      map['userDataBase64'] = userDataBase64Value;
    }
    map['version'] = version;
    final workingDirectoryValue = workingDirectory;
    if (workingDirectoryValue != null) {
      map['workingDirectory'] = workingDirectoryValue;
    }
    return map;
  }

  factory ImageRecipeArgs.fromMap(Map<String, dynamic> map) {
    return ImageRecipeArgs(
      amiTags:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['amiTags']),
      blockDeviceMappings:
          pulumi.Input.asOptionalInput<List<ImageRecipeBlockDeviceMapping>>(
              map['blockDeviceMappings']),
      components:
          pulumi.Input.asInput<List<ImageRecipeComponent>>(map['components']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parentImage: pulumi.Input.asInput<String>(map['parentImage']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      systemsManagerAgent:
          pulumi.Input.asOptionalInput<ImageRecipeSystemsManagerAgent>(
              map['systemsManagerAgent']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      userDataBase64:
          pulumi.Input.asOptionalInput<String>(map['userDataBase64']),
      version: pulumi.Input.asInput<String>(map['version']),
      workingDirectory:
          pulumi.Input.asOptionalInput<String>(map['workingDirectory']),
    );
  }
}
