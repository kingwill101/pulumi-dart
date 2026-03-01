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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? code,
    pulumi.Output<String>? comment,
    pulumi.Output<String>? etag,
    pulumi.Output<List<String>>? keyValueStoreAssociations,
    pulumi.Output<String>? liveStageEtag,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publish,
    pulumi.Output<String>? runtime,
    pulumi.Output<String>? status,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      code = pulumi.Input.asOptionalInput<String>(code),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      keyValueStoreAssociations = pulumi.Input.asOptionalInput<List<String>>(keyValueStoreAssociations),
      liveStageEtag = pulumi.Input.asOptionalInput<String>(liveStageEtag),
      name = pulumi.Input.asOptionalInput<String>(name),
      publish = pulumi.Input.asOptionalInput<bool>(publish),
      runtime = pulumi.Input.asOptionalInput<String>(runtime),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      code: map['code'] == null ? null : pulumi.Output.create<String>(map['code'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      keyValueStoreAssociations: map['keyValueStoreAssociations'] == null ? null : pulumi.Output.create<List<String>>((map['keyValueStoreAssociations'] as List).cast<String>()),
      liveStageEtag: map['liveStageEtag'] == null ? null : pulumi.Output.create<String>(map['liveStageEtag'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publish: map['publish'] == null ? null : pulumi.Output.create<bool>(map['publish'] as bool),
      runtime: map['runtime'] == null ? null : pulumi.Output.create<String>(map['runtime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

