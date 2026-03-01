// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketStyle resources.
class BucketStyleState {
  /// Storage space to which the picture style belongs
  final pulumi.Input<String>? bucket;
  /// Style category, valid values: image, document, video.
  final pulumi.Input<String>? category;
  /// The Image style content can contain single or multiple image processing parameters.
  final pulumi.Input<String>? content;
  /// Image Style Creation Time
  final pulumi.Input<String>? createTime;
  /// Image Style Name
  final pulumi.Input<String>? styleName;

  /// Creates a new [BucketStyleState].
  /// [bucket] Storage space to which the picture style belongs
  /// [category] Style category, valid values: image, document, video.
  /// [content] The Image style content can contain single or multiple image processing parameters.
  /// [createTime] Image Style Creation Time
  /// [styleName] Image Style Name
  BucketStyleState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? category,
    pulumi.Output<String>? content,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? styleName,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      category = pulumi.Input.asOptionalInput<String>(category),
      content = pulumi.Input.asOptionalInput<String>(content),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      styleName = pulumi.Input.asOptionalInput<String>(styleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'category': ?category,
      'content': ?content,
      'createTime': ?createTime,
      'styleName': ?styleName,
    };
  }

  factory BucketStyleState.fromMap(Map<String, dynamic> map) {
    return BucketStyleState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      styleName: map['styleName'] == null ? null : pulumi.Output.create<String>(map['styleName'] as String),
    );
  }
}

