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
    pulumi.Output<Map<String, String>>? amiTags,
    pulumi.Output<String>? arn,
    pulumi.Output<List<ImageRecipeBlockDeviceMapping>>? blockDeviceMappings,
    pulumi.Output<List<ImageRecipeComponent>>? components,
    pulumi.Output<String>? dateCreated,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? owner,
    pulumi.Output<String>? parentImage,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? region,
    pulumi.Output<ImageRecipeSystemsManagerAgent>? systemsManagerAgent,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? userDataBase64,
    pulumi.Output<String>? version,
    pulumi.Output<String>? workingDirectory,
  }) :
      amiTags = pulumi.Input.asOptionalInput<Map<String, String>>(amiTags),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      blockDeviceMappings = pulumi.Input.asOptionalInput<List<ImageRecipeBlockDeviceMapping>>(blockDeviceMappings),
      components = pulumi.Input.asOptionalInput<List<ImageRecipeComponent>>(components),
      dateCreated = pulumi.Input.asOptionalInput<String>(dateCreated),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      parentImage = pulumi.Input.asOptionalInput<String>(parentImage),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      region = pulumi.Input.asOptionalInput<String>(region),
      systemsManagerAgent = pulumi.Input.asOptionalInput<ImageRecipeSystemsManagerAgent>(systemsManagerAgent),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      userDataBase64 = pulumi.Input.asOptionalInput<String>(userDataBase64),
      version = pulumi.Input.asOptionalInput<String>(version),
      workingDirectory = pulumi.Input.asOptionalInput<String>(workingDirectory);

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
      amiTags: map['amiTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['amiTags'] as Map).cast<String, String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      blockDeviceMappings: map['blockDeviceMappings'] == null ? null : pulumi.Output.create<List<ImageRecipeBlockDeviceMapping>>(pulumi.Input.decodeList<ImageRecipeBlockDeviceMapping>(map['blockDeviceMappings'], (value) => ImageRecipeBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))),
      components: map['components'] == null ? null : pulumi.Output.create<List<ImageRecipeComponent>>(pulumi.Input.decodeList<ImageRecipeComponent>(map['components'], (value) => ImageRecipeComponent.fromMap((value as Map).cast<String, dynamic>()))),
      dateCreated: map['dateCreated'] == null ? null : pulumi.Output.create<String>(map['dateCreated'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      parentImage: map['parentImage'] == null ? null : pulumi.Output.create<String>(map['parentImage'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      systemsManagerAgent: map['systemsManagerAgent'] == null ? null : pulumi.Output.create<ImageRecipeSystemsManagerAgent>(ImageRecipeSystemsManagerAgent.fromMap((map['systemsManagerAgent'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      userDataBase64: map['userDataBase64'] == null ? null : pulumi.Output.create<String>(map['userDataBase64'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      workingDirectory: map['workingDirectory'] == null ? null : pulumi.Output.create<String>(map['workingDirectory'] as String),
    );
  }
}

