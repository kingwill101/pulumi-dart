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
    pulumi.Output<Map<String, String>>? amiTags,
    pulumi.Output<List<ImageRecipeBlockDeviceMapping>>? blockDeviceMappings,
    required pulumi.Output<List<ImageRecipeComponent>> components,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> parentImage,
    pulumi.Output<String>? region,
    pulumi.Output<ImageRecipeSystemsManagerAgent>? systemsManagerAgent,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? userDataBase64,
    required pulumi.Output<String> version,
    pulumi.Output<String>? workingDirectory,
  }) :
      amiTags = pulumi.Input.asOptionalInput<Map<String, String>>(amiTags),
      blockDeviceMappings = pulumi.Input.asOptionalInput<List<ImageRecipeBlockDeviceMapping>>(blockDeviceMappings),
      components = pulumi.Input.asInput<List<ImageRecipeComponent>>(components),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentImage = pulumi.Input.asInput<String>(parentImage),
      region = pulumi.Input.asOptionalInput<String>(region),
      systemsManagerAgent = pulumi.Input.asOptionalInput<ImageRecipeSystemsManagerAgent>(systemsManagerAgent),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userDataBase64 = pulumi.Input.asOptionalInput<String>(userDataBase64),
      version = pulumi.Input.asInput<String>(version),
      workingDirectory = pulumi.Input.asOptionalInput<String>(workingDirectory);

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
      amiTags: map['amiTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['amiTags'] as Map).cast<String, String>()),
      blockDeviceMappings: map['blockDeviceMappings'] == null ? null : pulumi.Output.create<List<ImageRecipeBlockDeviceMapping>>(pulumi.Input.decodeList<ImageRecipeBlockDeviceMapping>(map['blockDeviceMappings'], (value) => ImageRecipeBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))),
      components: pulumi.Output.create<List<ImageRecipeComponent>>(pulumi.Input.decodeList<ImageRecipeComponent>(map['components'], (value) => ImageRecipeComponent.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentImage: pulumi.Output.create<String>(map['parentImage'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      systemsManagerAgent: map['systemsManagerAgent'] == null ? null : pulumi.Output.create<ImageRecipeSystemsManagerAgent>(ImageRecipeSystemsManagerAgent.fromMap((map['systemsManagerAgent'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userDataBase64: map['userDataBase64'] == null ? null : pulumi.Output.create<String>(map['userDataBase64'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
      workingDirectory: map['workingDirectory'] == null ? null : pulumi.Output.create<String>(map['workingDirectory'] as String),
    );
  }
}

