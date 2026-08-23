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
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

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
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const FunctionState({
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
    this.tags,
    this.tagsAll,
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
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory FunctionState.fromMap(Map<String, dynamic> map) {
    return FunctionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyValueStoreAssociations: (() { final guardedValue = map['keyValueStoreAssociations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      liveStageEtag: (() { final guardedValue = map['liveStageEtag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publish: (() { final guardedValue = map['publish']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
