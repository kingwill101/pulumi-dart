// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Image resources.
class ImageState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Image.
  final pulumi.Input<String>? arn;
  /// The description of the image.
  final pulumi.Input<String>? description;
  /// The display name of the image. When the image is added to a domain (must be unique to the domain).
  final pulumi.Input<String>? displayName;
  /// The name of the image. Must be unique to your account.
  final pulumi.Input<String>? imageName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker AI to perform tasks on your behalf.
  final pulumi.Input<String>? roleArn;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ImageState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Image.
  /// [description] The description of the image.
  /// [displayName] The display name of the image. When the image is added to a domain (must be unique to the domain).
  /// [imageName] The name of the image. Must be unique to your account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker AI to perform tasks on your behalf.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ImageState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? imageName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'displayName': ?displayName,
      'imageName': ?imageName,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ImageState.fromMap(Map<String, dynamic> map) {
    return ImageState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      imageName: map['imageName'] == null ? null : pulumi.Output.create<String>(map['imageName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

