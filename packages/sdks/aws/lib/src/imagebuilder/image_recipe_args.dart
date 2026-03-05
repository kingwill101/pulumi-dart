// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_recipe_block_device_mapping.dart';
import 'image_recipe_component.dart';
import 'image_recipe_systems_manager_agent.dart';

/// {@template pulumi_imagebuilder_image_recipe_image_recipe_args_doc}
/// The set of arguments for ImageRecipe.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_image_recipe_image_recipe_args_doc}
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

  /// Creates a new [ImageRecipeArgs].
  /// [amiTags] Tags that are applied to the AMI that Image Builder creates during the Build phase prior to image distribution. Maximum of 50 tags.
  /// [blockDeviceMappings] Configuration block(s) with block device mappings for the image recipe. Detailed below.
  /// [components] Ordered configuration block(s) with components for the image recipe. Detailed below.
  /// [description] Description of the image recipe.
  /// [name] Name of the image recipe.
  /// [parentImage] The image recipe uses this image as a base from which to build your customized image. The value can be the base image ARN, an AMI ID, or an SSM Parameter referencing the AMI. For an SSM Parameter, enter the prefix `ssm:`, followed by the parameter name or ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [systemsManagerAgent] Configuration block for the Systems Manager Agent installed by default by Image Builder. Detailed below.
  /// [tags] Key-value map of resource tags for the image recipe. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userDataBase64] Base64 encoded user data. Use this to provide commands or a command script to run when you launch your build instance.
  /// [version] The semantic version of the image recipe, which specifies the version in the following format, with numeric values in each position to indicate a specific version: major.minor.patch. For example: 1.0.0.
  /// [workingDirectory] The working directory to be used during build and test workflows.
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
    return <String, dynamic>{
      'amiTags': ?amiTags,
      'blockDeviceMappings': ?pulumi.Input.mapOptionalInputValue<List<ImageRecipeBlockDeviceMapping>, List<Map<String, dynamic>>>(blockDeviceMappings, (value) => pulumi.Input.encodeList<ImageRecipeBlockDeviceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'components': pulumi.Input.mapInputValue<List<ImageRecipeComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<ImageRecipeComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': ?name,
      'parentImage': parentImage,
      'region': ?region,
      'systemsManagerAgent': ?pulumi.Input.mapOptionalInputValue<ImageRecipeSystemsManagerAgent, Map<String, dynamic>>(systemsManagerAgent, (value) => value.toMap()),
      'tags': ?tags,
      'userDataBase64': ?userDataBase64,
      'version': version,
      'workingDirectory': ?workingDirectory,
    };
  }

  factory ImageRecipeArgs.fromMap(Map<String, dynamic> map) {
    return ImageRecipeArgs(
      amiTags: (() { final guardedValue = map['amiTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      blockDeviceMappings: (() { final guardedValue = map['blockDeviceMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageRecipeBlockDeviceMapping>(guardedValue, (value) => ImageRecipeBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      components: pulumi.Input.fromValue(pulumi.Input.decodeList<ImageRecipeComponent>(map['components']!, (value) => ImageRecipeComponent.fromMap((value as Map).cast<String, dynamic>()))),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentImage: pulumi.Input.fromValue(map['parentImage'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemsManagerAgent: (() { final guardedValue = map['systemsManagerAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageRecipeSystemsManagerAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userDataBase64: (() { final guardedValue = map['userDataBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
      workingDirectory: (() { final guardedValue = map['workingDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

