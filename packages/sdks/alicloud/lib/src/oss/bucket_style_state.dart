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
  const BucketStyleState({
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
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      styleName: (() { final guardedValue = map['styleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

