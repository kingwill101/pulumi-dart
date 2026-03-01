// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_referer_bucket_referer_args_doc}
/// The set of arguments for BucketReferer.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_referer_bucket_referer_args_doc}
class BucketRefererArgs {
  /// Whether to allow empty Referer request headers.
  final pulumi.Input<bool> allowEmptyReferer;
  /// Specifies whether to truncate the query string in the URL when the Referer is matched. Valid values: true, false.
  final pulumi.Input<bool>? allowTruncateQueryString;
  /// Name of the Bucket.
  final pulumi.Input<String> bucket;
  /// The container that holds the Referer blacklist.
  final pulumi.Input<List<String>>? refererBlacklists;
  /// The container that holds the Referer whitelist.
  final pulumi.Input<List<String>>? refererLists;
  /// Specifies whether to truncate the path and parts that follow the path in the URL when the Referer is matched. Valid values: true, false. If TruncatePath is set to true, the value of AllowTruncateQueryString must be also true because the query string follows the path component. When the path is truncated, the query string is also truncated.
  final pulumi.Input<bool>? truncatePath;

  /// Creates a new [BucketRefererArgs].
  /// [allowEmptyReferer] Whether to allow empty Referer request headers.
  /// [allowTruncateQueryString] Specifies whether to truncate the query string in the URL when the Referer is matched. Valid values: true, false.
  /// [bucket] Name of the Bucket.
  /// [refererBlacklists] The container that holds the Referer blacklist.
  /// [refererLists] The container that holds the Referer whitelist.
  /// [truncatePath] Specifies whether to truncate the path and parts that follow the path in the URL when the Referer is matched. Valid values: true, false. If TruncatePath is set to true, the value of AllowTruncateQueryString must be also true because the query string follows the path component. When the path is truncated, the query string is also truncated.
  BucketRefererArgs({
    required pulumi.Output<bool> allowEmptyReferer,
    pulumi.Output<bool>? allowTruncateQueryString,
    required pulumi.Output<String> bucket,
    pulumi.Output<List<String>>? refererBlacklists,
    pulumi.Output<List<String>>? refererLists,
    pulumi.Output<bool>? truncatePath,
  }) :
      allowEmptyReferer = pulumi.Input.asInput<bool>(allowEmptyReferer),
      allowTruncateQueryString = pulumi.Input.asOptionalInput<bool>(allowTruncateQueryString),
      bucket = pulumi.Input.asInput<String>(bucket),
      refererBlacklists = pulumi.Input.asOptionalInput<List<String>>(refererBlacklists),
      refererLists = pulumi.Input.asOptionalInput<List<String>>(refererLists),
      truncatePath = pulumi.Input.asOptionalInput<bool>(truncatePath);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEmptyReferer': allowEmptyReferer,
      'allowTruncateQueryString': ?allowTruncateQueryString,
      'bucket': bucket,
      'refererBlacklists': ?refererBlacklists,
      'refererLists': ?refererLists,
      'truncatePath': ?truncatePath,
    };
  }

  factory BucketRefererArgs.fromMap(Map<String, dynamic> map) {
    return BucketRefererArgs(
      allowEmptyReferer: pulumi.Output.create<bool>(map['allowEmptyReferer'] as bool),
      allowTruncateQueryString: map['allowTruncateQueryString'] == null ? null : pulumi.Output.create<bool>(map['allowTruncateQueryString'] as bool),
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      refererBlacklists: map['refererBlacklists'] == null ? null : pulumi.Output.create<List<String>>((map['refererBlacklists'] as List).cast<String>()),
      refererLists: map['refererLists'] == null ? null : pulumi.Output.create<List<String>>((map['refererLists'] as List).cast<String>()),
      truncatePath: map['truncatePath'] == null ? null : pulumi.Output.create<bool>(map['truncatePath'] as bool),
    );
  }
}

