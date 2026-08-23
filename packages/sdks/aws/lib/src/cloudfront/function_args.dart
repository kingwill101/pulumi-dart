// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_function_function_args_doc}
/// The set of arguments for Function.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_function_function_args_doc}
class FunctionArgs {
  /// Source code of the function
  final pulumi.Input<String> code;
  /// Comment.
  final pulumi.Input<String>? comment;
  /// List of `aws.cloudfront.KeyValueStore` ARNs to be associated to the function. AWS limits associations to one key value store per function.
  final pulumi.Input<List<String>>? keyValueStoreAssociations;
  /// Unique name for your CloudFront Function.
  final pulumi.Input<String>? name;
  /// Whether to publish creation/change as Live CloudFront Function Version. Defaults to `true`.
  final pulumi.Input<bool>? publish;
  /// Identifier of the function's runtime. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> runtime;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FunctionArgs].
  /// [code] Source code of the function
  /// [comment] Comment.
  /// [keyValueStoreAssociations] List of `aws.cloudfront.KeyValueStore` ARNs to be associated to the function. AWS limits associations to one key value store per function.
  /// [name] Unique name for your CloudFront Function.
  /// [publish] Whether to publish creation/change as Live CloudFront Function Version. Defaults to `true`.
  /// [runtime] Identifier of the function's runtime. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const FunctionArgs({
    required this.code,
    this.comment,
    this.keyValueStoreAssociations,
    this.name,
    this.publish,
    required this.runtime,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'comment': ?comment,
      'keyValueStoreAssociations': ?keyValueStoreAssociations,
      'name': ?name,
      'publish': ?publish,
      'runtime': runtime,
      'tags': ?tags,
    };
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      code: pulumi.Input.fromValue(map['code'] as String),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyValueStoreAssociations: (() { final guardedValue = map['keyValueStoreAssociations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publish: (() { final guardedValue = map['publish']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runtime: pulumi.Input.fromValue(map['runtime'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
