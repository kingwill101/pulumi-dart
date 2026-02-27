// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Function.
class FunctionArgs2 {
  /// Source code of the function
  final Input<String> code;

  /// Comment.
  final Input<String>? comment;

  /// List of `aws.cloudfront.KeyValueStore` ARNs to be associated to the function. AWS limits associations to one key value store per function.
  final Input<List<String>>? keyValueStoreAssociations;

  /// Unique name for your CloudFront Function.
  final Input<String>? name;

  /// Whether to publish creation/change as Live CloudFront Function Version. Defaults to `true`.
  final Input<bool>? publish;

  /// Identifier of the function's runtime. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  ///
  /// The following arguments are optional:
  final Input<String> runtime;

  FunctionArgs2({
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

  factory FunctionArgs2.fromMap(Map<String, dynamic> map) {
    return FunctionArgs2(
      code: Input.asInput<String>(map['code']),
      comment: Input.asOptionalInput<String>(map['comment']),
      keyValueStoreAssociations:
          Input.asOptionalInput<List<String>>(map['keyValueStoreAssociations']),
      name: Input.asOptionalInput<String>(map['name']),
      publish: Input.asOptionalInput<bool>(map['publish']),
      runtime: Input.asInput<String>(map['runtime']),
    );
  }
}
