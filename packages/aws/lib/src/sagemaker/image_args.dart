// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sagemaker_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_image_image_args_doc}
class ImageArgs {
  /// The description of the image.
  final pulumi.Input<String>? description;

  /// The display name of the image. When the image is added to a domain (must be unique to the domain).
  final pulumi.Input<String>? displayName;

  /// The name of the image. Must be unique to your account.
  final pulumi.Input<String> imageName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker AI to perform tasks on your behalf.
  final pulumi.Input<String> roleArn;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ImageArgs].
  /// [description] The description of the image.
  /// [displayName] The display name of the image. When the image is added to a domain (must be unique to the domain).
  /// [imageName] The name of the image. Must be unique to your account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker AI to perform tasks on your behalf.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ImageArgs({
    String? description,
    String? displayName,
    required String imageName,
    String? region,
    required String roleArn,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        imageName = pulumi.Input.asInput<String>(imageName),
        region = pulumi.Input.asOptionalInput<String>(region),
        roleArn = pulumi.Input.asInput<String>(roleArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      imageName: map['imageName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
