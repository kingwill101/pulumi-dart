// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Function.
class FunctionCloudfrontArgs {
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

  FunctionCloudfrontArgs({
    required this.code,
    this.comment,
    this.keyValueStoreAssociations,
    this.name,
    this.publish,
    required this.runtime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final keyValueStoreAssociationsValue = keyValueStoreAssociations;
    if (keyValueStoreAssociationsValue != null) {
      map['keyValueStoreAssociations'] = keyValueStoreAssociationsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final publishValue = publish;
    if (publishValue != null) {
      map['publish'] = publishValue;
    }
    map['runtime'] = runtime;
    return map;
  }

  factory FunctionCloudfrontArgs.fromMap(Map<String, dynamic> map) {
    return FunctionCloudfrontArgs(
      code: pulumi.Input.asInput<String>(map['code']),
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
      keyValueStoreAssociations: pulumi.Input.asOptionalInput<List<String>>(
          map['keyValueStoreAssociations']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      publish: pulumi.Input.asOptionalInput<bool>(map['publish']),
      runtime: pulumi.Input.asInput<String>(map['runtime']),
    );
  }
}
