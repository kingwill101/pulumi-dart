// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_recipe_block_device_mapping.dart';
import 'get_image_recipe_component.dart';

/// Result data returned by getImageRecipe.
class GetImageRecipeResult {
  /// Tags that are applied to the AMI that Image Builder creates during the Build phase prior to image distribution.
  final Map<String, String>? amiTags;
  final String? arn;
  /// Set of objects with block device mappings for the image recipe.
  final List<GetImageRecipeBlockDeviceMapping>? blockDeviceMappings;
  /// List of objects with components for the image recipe.
  final List<GetImageRecipeComponent>? components;
  /// Date the image recipe was created.
  final String? dateCreated;
  /// Description of the image recipe.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the image recipe.
  final String? name;
  /// Owner of the image recipe.
  final String? owner;
  /// Base image of the image recipe.
  final String? parentImage;
  /// Platform of the image recipe.
  final String? platform;
  final String? region;
  /// Key-value map of resource tags for the image recipe.
  final Map<String, String>? tags;
  /// Base64 encoded contents of user data. Commands or a command script to run when build instance is launched.
  final String? userDataBase64;
  /// Version of the image recipe.
  final String? version;
  /// Working directory used during build and test workflows.
  final String? workingDirectory;

  /// Creates a new [GetImageRecipeResult].
  /// [amiTags] Tags that are applied to the AMI that Image Builder creates during the Build phase prior to image distribution.
  /// [arn] Optional.
  /// [blockDeviceMappings] Set of objects with block device mappings for the image recipe.
  /// [components] List of objects with components for the image recipe.
  /// [dateCreated] Date the image recipe was created.
  /// [description] Description of the image recipe.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the image recipe.
  /// [owner] Owner of the image recipe.
  /// [parentImage] Base image of the image recipe.
  /// [platform] Platform of the image recipe.
  /// [region] Optional.
  /// [tags] Key-value map of resource tags for the image recipe.
  /// [userDataBase64] Base64 encoded contents of user data. Commands or a command script to run when build instance is launched.
  /// [version] Version of the image recipe.
  /// [workingDirectory] Working directory used during build and test workflows.
  const GetImageRecipeResult({
    this.amiTags,
    this.arn,
    this.blockDeviceMappings,
    this.components,
    this.dateCreated,
    this.description,
    this.id,
    this.name,
    this.owner,
    this.parentImage,
    this.platform,
    this.region,
    this.tags,
    this.userDataBase64,
    this.version,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiTags': ?amiTags,
      'arn': ?arn,
      'blockDeviceMappings': ?(() { final guardedValue = blockDeviceMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageRecipeBlockDeviceMapping, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'components': ?(() { final guardedValue = components; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageRecipeComponent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dateCreated': ?dateCreated,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'owner': ?owner,
      'parentImage': ?parentImage,
      'platform': ?platform,
      'region': ?region,
      'tags': ?tags,
      'userDataBase64': ?userDataBase64,
      'version': ?version,
      'workingDirectory': ?workingDirectory,
    };
  }

  factory GetImageRecipeResult.fromMap(Map<String, dynamic> map) {
    return GetImageRecipeResult(
      amiTags: (() { final guardedValue = map['amiTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      blockDeviceMappings: (() { final guardedValue = map['blockDeviceMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageRecipeBlockDeviceMapping>(guardedValue, (value) => GetImageRecipeBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>())); })(),
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageRecipeComponent>(guardedValue, (value) => GetImageRecipeComponent.fromMap((value as Map).cast<String, dynamic>())); })(),
      dateCreated: (() { final guardedValue = map['dateCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentImage: (() { final guardedValue = map['parentImage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      userDataBase64: (() { final guardedValue = map['userDataBase64']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workingDirectory: (() { final guardedValue = map['workingDirectory']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
