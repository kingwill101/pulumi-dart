// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketReferer resources.
class BucketRefererState {
  /// Whether to allow empty Referer request headers.
  final pulumi.Input<bool>? allowEmptyReferer;
  /// Specifies whether to truncate the query string in the URL when the Referer is matched. Valid values: true, false.
  final pulumi.Input<bool>? allowTruncateQueryString;
  /// Name of the Bucket.
  final pulumi.Input<String>? bucket;
  /// The container that holds the Referer blacklist.
  final pulumi.Input<List<String>>? refererBlacklists;
  /// The container that holds the Referer whitelist.
  final pulumi.Input<List<String>>? refererLists;
  /// Specifies whether to truncate the path and parts that follow the path in the URL when the Referer is matched. Valid values: true, false. If TruncatePath is set to true, the value of AllowTruncateQueryString must be also true because the query string follows the path component. When the path is truncated, the query string is also truncated.
  final pulumi.Input<bool>? truncatePath;

  /// Creates a new [BucketRefererState].
  /// [allowEmptyReferer] Whether to allow empty Referer request headers.
  /// [allowTruncateQueryString] Specifies whether to truncate the query string in the URL when the Referer is matched. Valid values: true, false.
  /// [bucket] Name of the Bucket.
  /// [refererBlacklists] The container that holds the Referer blacklist.
  /// [refererLists] The container that holds the Referer whitelist.
  /// [truncatePath] Specifies whether to truncate the path and parts that follow the path in the URL when the Referer is matched. Valid values: true, false. If TruncatePath is set to true, the value of AllowTruncateQueryString must be also true because the query string follows the path component. When the path is truncated, the query string is also truncated.
  BucketRefererState({
    this.allowEmptyReferer,
    this.allowTruncateQueryString,
    this.bucket,
    this.refererBlacklists,
    this.refererLists,
    this.truncatePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEmptyReferer': ?allowEmptyReferer,
      'allowTruncateQueryString': ?allowTruncateQueryString,
      'bucket': ?bucket,
      'refererBlacklists': ?refererBlacklists,
      'refererLists': ?refererLists,
      'truncatePath': ?truncatePath,
    };
  }

  factory BucketRefererState.fromMap(Map<String, dynamic> map) {
    return BucketRefererState(
      allowEmptyReferer: map['allowEmptyReferer'] == null ? null : (map['allowEmptyReferer'] as bool).input(),
      allowTruncateQueryString: map['allowTruncateQueryString'] == null ? null : (map['allowTruncateQueryString'] as bool).input(),
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      refererBlacklists: map['refererBlacklists'] == null ? null : ((map['refererBlacklists'] as List).cast<String>()).input(),
      refererLists: map['refererLists'] == null ? null : ((map['refererLists'] as List).cast<String>()).input(),
      truncatePath: map['truncatePath'] == null ? null : (map['truncatePath'] as bool).input(),
    );
  }
}

