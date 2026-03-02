// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_recipe_block_device_mapping.dart';
import 'image_recipe_component.dart';
import 'image_recipe_systems_manager_agent.dart';

/// Input properties used for looking up and filtering ImageRecipe resources.
class ImageRecipeState {
  /// Tags that are applied to the AMI that Image Builder creates during the Build phase prior to image distribution. Maximum of 50 tags.
  final pulumi.Input<Map<String, String>>? amiTags;
  /// Amazon Resource Name (ARN) of the image recipe.
  final pulumi.Input<String>? arn;
  /// Configuration block(s) with block device mappings for the image recipe. Detailed below.
  final pulumi.Input<List<ImageRecipeBlockDeviceMapping>>? blockDeviceMappings;
  /// Ordered configuration block(s) with components for the image recipe. Detailed below.
  final pulumi.Input<List<ImageRecipeComponent>>? components;
  /// Date the image recipe was created.
  final pulumi.Input<String>? dateCreated;
  /// Description of the image recipe.
  final pulumi.Input<String>? description;
  /// Name of the image recipe.
  final pulumi.Input<String>? name;
  /// Owner of the image recipe.
  final pulumi.Input<String>? owner;
  /// The image recipe uses this image as a base from which to build your customized image. The value can be the base image ARN, an AMI ID, or an SSM Parameter referencing the AMI. For an SSM Parameter, enter the prefix `ssm:`, followed by the parameter name or ARN.
  final pulumi.Input<String>? parentImage;
  /// Platform of the image recipe.
  final pulumi.Input<String>? platform;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for the Systems Manager Agent installed by default by Image Builder. Detailed below.
  final pulumi.Input<ImageRecipeSystemsManagerAgent>? systemsManagerAgent;
  /// Key-value map of resource tags for the image recipe. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Base64 encoded user data. Use this to provide commands or a command script to run when you launch your build instance.
  final pulumi.Input<String>? userDataBase64;
  /// The semantic version of the image recipe, which specifies the version in the following format, with numeric values in each position to indicate a specific version: major.minor.patch. For example: 1.0.0.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? version;
  /// The working directory to be used during build and test workflows.
  final pulumi.Input<String>? workingDirectory;

  /// Creates a new [ImageRecipeState].
  /// [amiTags] Tags that are applied to the AMI that Image Builder creates during the Build phase prior to image distribution. Maximum of 50 tags.
  /// [arn] Amazon Resource Name (ARN) of the image recipe.
  /// [blockDeviceMappings] Configuration block(s) with block device mappings for the image recipe. Detailed below.
  /// [components] Ordered configuration block(s) with components for the image recipe. Detailed below.
  /// [dateCreated] Date the image recipe was created.
  /// [description] Description of the image recipe.
  /// [name] Name of the image recipe.
  /// [owner] Owner of the image recipe.
  /// [parentImage] The image recipe uses this image as a base from which to build your customized image. The value can be the base image ARN, an AMI ID, or an SSM Parameter referencing the AMI. For an SSM Parameter, enter the prefix `ssm:`, followed by the parameter name or ARN.
  /// [platform] Platform of the image recipe.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [systemsManagerAgent] Configuration block for the Systems Manager Agent installed by default by Image Builder. Detailed below.
  /// [tags] Key-value map of resource tags for the image recipe. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userDataBase64] Base64 encoded user data. Use this to provide commands or a command script to run when you launch your build instance.
  /// [version] The semantic version of the image recipe, which specifies the version in the following format, with numeric values in each position to indicate a specific version: major.minor.patch. For example: 1.0.0.
  /// [workingDirectory] The working directory to be used during build and test workflows.
  ImageRecipeState({
    this.amiTags,
    this.arn,
    this.blockDeviceMappings,
    this.components,
    this.dateCreated,
    this.description,
    this.name,
    this.owner,
    this.parentImage,
    this.platform,
    this.region,
    this.systemsManagerAgent,
    this.tags,
    this.tagsAll,
    this.userDataBase64,
    this.version,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiTags': ?amiTags,
      'arn': ?arn,
      'blockDeviceMappings': ?pulumi.Input.mapOptionalInputValue<List<ImageRecipeBlockDeviceMapping>, List<Map<String, dynamic>>>(blockDeviceMappings, (value) => pulumi.Input.encodeList<ImageRecipeBlockDeviceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'components': ?pulumi.Input.mapOptionalInputValue<List<ImageRecipeComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<ImageRecipeComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dateCreated': ?dateCreated,
      'description': ?description,
      'name': ?name,
      'owner': ?owner,
      'parentImage': ?parentImage,
      'platform': ?platform,
      'region': ?region,
      'systemsManagerAgent': ?pulumi.Input.mapOptionalInputValue<ImageRecipeSystemsManagerAgent, Map<String, dynamic>>(systemsManagerAgent, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userDataBase64': ?userDataBase64,
      'version': ?version,
      'workingDirectory': ?workingDirectory,
    };
  }

  factory ImageRecipeState.fromMap(Map<String, dynamic> map) {
    return ImageRecipeState(
      amiTags: map['amiTags'] == null ? null : (((map['amiTags'] as Map).cast<String, String>()).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      blockDeviceMappings: map['blockDeviceMappings'] == null ? null : ((pulumi.Input.decodeList<ImageRecipeBlockDeviceMapping>(map['blockDeviceMappings']!, (value) => ImageRecipeBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      components: map['components'] == null ? null : ((pulumi.Input.decodeList<ImageRecipeComponent>(map['components']!, (value) => ImageRecipeComponent.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      dateCreated: map['dateCreated'] == null ? null : ((map['dateCreated'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      owner: map['owner'] == null ? null : ((map['owner'] as String).input()).input(),
      parentImage: map['parentImage'] == null ? null : ((map['parentImage'] as String).input()).input(),
      platform: map['platform'] == null ? null : ((map['platform'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      systemsManagerAgent: map['systemsManagerAgent'] == null ? null : ((ImageRecipeSystemsManagerAgent.fromMap((map['systemsManagerAgent']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      userDataBase64: map['userDataBase64'] == null ? null : ((map['userDataBase64'] as String).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
      workingDirectory: map['workingDirectory'] == null ? null : ((map['workingDirectory'] as String).input()).input(),
    );
  }
}

