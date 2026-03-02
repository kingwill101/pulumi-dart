// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_style_bucket_style_args_doc}
/// The set of arguments for BucketStyle.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_style_bucket_style_args_doc}
class BucketStyleArgs {
  /// Storage space to which the picture style belongs
  final pulumi.Input<String> bucket;
  /// Style category, valid values: image, document, video.
  final pulumi.Input<String>? category;
  /// The Image style content can contain single or multiple image processing parameters.
  final pulumi.Input<String> content;
  /// Image Style Name
  final pulumi.Input<String> styleName;

  /// Creates a new [BucketStyleArgs].
  /// [bucket] Storage space to which the picture style belongs
  /// [category] Style category, valid values: image, document, video.
  /// [content] The Image style content can contain single or multiple image processing parameters.
  /// [styleName] Image Style Name
  BucketStyleArgs({
    required this.bucket,
    this.category,
    required this.content,
    required this.styleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'category': ?category,
      'content': content,
      'styleName': styleName,
    };
  }

  factory BucketStyleArgs.fromMap(Map<String, dynamic> map) {
    return BucketStyleArgs(
      bucket: (map['bucket'] as String).input(),
      category: map['category'] == null ? null : (map['category']! as String).input(),
      content: (map['content'] as String).input(),
      styleName: (map['styleName'] as String).input(),
    );
  }
}

