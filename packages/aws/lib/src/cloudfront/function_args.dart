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

  /// Creates a new [FunctionArgs].
  /// [code] Source code of the function
  /// [comment] Comment.
  /// [keyValueStoreAssociations] List of `aws.cloudfront.KeyValueStore` ARNs to be associated to the function. AWS limits associations to one key value store per function.
  /// [name] Unique name for your CloudFront Function.
  /// [publish] Whether to publish creation/change as Live CloudFront Function Version. Defaults to `true`.
  /// [runtime] Identifier of the function's runtime. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  FunctionArgs({
    required String code,
    String? comment,
    List<String>? keyValueStoreAssociations,
    String? name,
    bool? publish,
    required String runtime,
  }) : code = pulumi.Input.asInput<String>(code),
       comment = pulumi.Input.asOptionalInput<String>(comment),
       keyValueStoreAssociations = pulumi.Input.asOptionalInput<List<String>>(
         keyValueStoreAssociations,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       publish = pulumi.Input.asOptionalInput<bool>(publish),
       runtime = pulumi.Input.asInput<String>(runtime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'comment': ?comment,
      'keyValueStoreAssociations': ?keyValueStoreAssociations,
      'name': ?name,
      'publish': ?publish,
      'runtime': runtime,
    };
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      code: map['code'] as String,
      comment: map['comment'] == null ? null : map['comment'] as String,
      keyValueStoreAssociations: map['keyValueStoreAssociations'] == null
          ? null
          : (map['keyValueStoreAssociations'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      publish: map['publish'] == null ? null : map['publish'] as bool,
      runtime: map['runtime'] as String,
    );
  }
}
