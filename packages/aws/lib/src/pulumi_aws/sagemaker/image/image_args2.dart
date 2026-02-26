// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Image.
class ImageArgs2 {
  /// The description of the image.
  final Input<String>? description;

  /// The display name of the image. When the image is added to a domain (must be unique to the domain).
  final Input<String>? displayName;

  /// The name of the image. Must be unique to your account.
  final Input<String> imageName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker AI to perform tasks on your behalf.
  final Input<String> roleArn;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ImageArgs2({
    this.description,
    this.displayName,
    required this.imageName,
    this.region,
    required this.roleArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['imageName'] = imageName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ImageArgs2.fromMap(Map<String, dynamic> map) {
    return ImageArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      imageName: Input.asInput<String>(map['imageName']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
