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
    this.bucket,
    this.category,
    this.content,
    this.createTime,
    this.styleName,
  });

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
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      category: map['category'] == null ? null : (map['category']! as String).input(),
      content: map['content'] == null ? null : (map['content']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      styleName: map['styleName'] == null ? null : (map['styleName']! as String).input(),
    );
  }
}

