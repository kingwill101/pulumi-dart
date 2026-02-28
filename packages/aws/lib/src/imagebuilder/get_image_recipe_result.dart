// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_recipe_block_device_mapping.dart';
import 'get_image_recipe_component.dart';

/// Result data returned by getImageRecipe.
class GetImageRecipeResult {
  /// Tags that are applied to the AMI that Image Builder creates during the Build phase prior to image distribution.
  final Map<String, String> amiTags;
  final String arn;

  /// Set of objects with block device mappings for the image recipe.
  final List<GetImageRecipeBlockDeviceMapping> blockDeviceMappings;

  /// List of objects with components for the image recipe.
  final List<GetImageRecipeComponent> components;

  /// Date the image recipe was created.
  final String dateCreated;

  /// Description of the image recipe.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the image recipe.
  final String name;

  /// Owner of the image recipe.
  final String owner;

  /// Base image of the image recipe.
  final String parentImage;

  /// Platform of the image recipe.
  final String platform;
  final String region;

  /// Key-value map of resource tags for the image recipe.
  final Map<String, String> tags;

  /// Base64 encoded contents of user data. Commands or a command script to run when build instance is launched.
  final String userDataBase64;

  /// Version of the image recipe.
  final String version;

  /// Working directory used during build and test workflows.
  final String workingDirectory;

  /// Creates a new [GetImageRecipeResult].
  /// [amiTags] Tags that are applied to the AMI that Image Builder creates during the Build phase prior to image distribution.
  /// [arn] Required.
  /// [blockDeviceMappings] Set of objects with block device mappings for the image recipe.
  /// [components] List of objects with components for the image recipe.
  /// [dateCreated] Date the image recipe was created.
  /// [description] Description of the image recipe.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the image recipe.
  /// [owner] Owner of the image recipe.
  /// [parentImage] Base image of the image recipe.
  /// [platform] Platform of the image recipe.
  /// [region] Required.
  /// [tags] Key-value map of resource tags for the image recipe.
  /// [userDataBase64] Base64 encoded contents of user data. Commands or a command script to run when build instance is launched.
  /// [version] Version of the image recipe.
  /// [workingDirectory] Working directory used during build and test workflows.
  GetImageRecipeResult({
    required this.amiTags,
    required this.arn,
    required this.blockDeviceMappings,
    required this.components,
    required this.dateCreated,
    required this.description,
    required this.id,
    required this.name,
    required this.owner,
    required this.parentImage,
    required this.platform,
    required this.region,
    required this.tags,
    required this.userDataBase64,
    required this.version,
    required this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amiTags'] = amiTags;
    map['arn'] = arn;
    map['blockDeviceMappings'] = pulumi.Input.encodeList<
        GetImageRecipeBlockDeviceMapping,
        Map<String, dynamic>>(blockDeviceMappings, (value) => value.toMap());
    map['components'] =
        pulumi.Input.encodeList<GetImageRecipeComponent, Map<String, dynamic>>(
            components, (value) => value.toMap());
    map['dateCreated'] = dateCreated;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['owner'] = owner;
    map['parentImage'] = parentImage;
    map['platform'] = platform;
    map['region'] = region;
    map['tags'] = tags;
    map['userDataBase64'] = userDataBase64;
    map['version'] = version;
    map['workingDirectory'] = workingDirectory;
    return map;
  }

  factory GetImageRecipeResult.fromMap(Map<String, dynamic> map) {
    return GetImageRecipeResult(
      amiTags: (map['amiTags'] as Map).cast<String, String>(),
      arn: map['arn'] as String,
      blockDeviceMappings:
          pulumi.Input.decodeList<GetImageRecipeBlockDeviceMapping>(
              map['blockDeviceMappings'],
              (value) => GetImageRecipeBlockDeviceMapping.fromMap(
                  (value as Map).cast<String, dynamic>())),
      components: pulumi.Input.decodeList<GetImageRecipeComponent>(
          map['components'],
          (value) => GetImageRecipeComponent.fromMap(
              (value as Map).cast<String, dynamic>())),
      dateCreated: map['dateCreated'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      owner: map['owner'] as String,
      parentImage: map['parentImage'] as String,
      platform: map['platform'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userDataBase64: map['userDataBase64'] as String,
      version: map['version'] as String,
      workingDirectory: map['workingDirectory'] as String,
    );
  }
}
