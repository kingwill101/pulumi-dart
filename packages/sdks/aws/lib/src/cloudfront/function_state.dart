// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Function resources.
class FunctionState {
  /// Amazon Resource Name (ARN) identifying your CloudFront Function.
  final pulumi.Input<String>? arn;
  /// Source code of the function
  final pulumi.Input<String>? code;
  /// Comment.
  final pulumi.Input<String>? comment;
  /// ETag hash of the function. This is the value for the `DEVELOPMENT` stage of the function.
  final pulumi.Input<String>? etag;
  /// List of `aws.cloudfront.KeyValueStore` ARNs to be associated to the function. AWS limits associations to one key value store per function.
  final pulumi.Input<List<String>>? keyValueStoreAssociations;
  /// ETag hash of any `LIVE` stage of the function.
  final pulumi.Input<String>? liveStageEtag;
  /// Unique name for your CloudFront Function.
  final pulumi.Input<String>? name;
  /// Whether to publish creation/change as Live CloudFront Function Version. Defaults to `true`.
  final pulumi.Input<bool>? publish;
  /// Identifier of the function's runtime. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? runtime;
  /// Status of the function. Can be `UNPUBLISHED`, `UNASSOCIATED` or `ASSOCIATED`.
  final pulumi.Input<String>? status;

  /// Creates a new [FunctionState].
  /// [arn] Amazon Resource Name (ARN) identifying your CloudFront Function.
  /// [code] Source code of the function
  /// [comment] Comment.
  /// [etag] ETag hash of the function. This is the value for the `DEVELOPMENT` stage of the function.
  /// [keyValueStoreAssociations] List of `aws.cloudfront.KeyValueStore` ARNs to be associated to the function. AWS limits associations to one key value store per function.
  /// [liveStageEtag] ETag hash of any `LIVE` stage of the function.
  /// [name] Unique name for your CloudFront Function.
  /// [publish] Whether to publish creation/change as Live CloudFront Function Version. Defaults to `true`.
  /// [runtime] Identifier of the function's runtime. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  /// [status] Status of the function. Can be `UNPUBLISHED`, `UNASSOCIATED` or `ASSOCIATED`.
  FunctionState({
    this.arn,
    this.code,
    this.comment,
    this.etag,
    this.keyValueStoreAssociations,
    this.liveStageEtag,
    this.name,
    this.publish,
    this.runtime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'code': ?code,
      'comment': ?comment,
      'etag': ?etag,
      'keyValueStoreAssociations': ?keyValueStoreAssociations,
      'liveStageEtag': ?liveStageEtag,
      'name': ?name,
      'publish': ?publish,
      'runtime': ?runtime,
      'status': ?status,
    };
  }

  factory FunctionState.fromMap(Map<String, dynamic> map) {
    return FunctionState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      code: map['code'] == null ? null : (map['code'] as String).input(),
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      keyValueStoreAssociations: map['keyValueStoreAssociations'] == null ? null : ((map['keyValueStoreAssociations'] as List).cast<String>()).input(),
      liveStageEtag: map['liveStageEtag'] == null ? null : (map['liveStageEtag'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      publish: map['publish'] == null ? null : (map['publish'] as bool).input(),
      runtime: map['runtime'] == null ? null : (map['runtime'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

