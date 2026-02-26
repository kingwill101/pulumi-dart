// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFunction.
class GetFunctionResult {
  /// ARN identifying your CloudFront Function.
  final String arn;

  /// Source code of the function
  final String code;

  /// Comment.
  final String comment;

  /// ETag hash of the function
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of <span pulumi-lang-nodejs="`aws.cloudfront.KeyValueStore`" pulumi-lang-dotnet="`aws.cloudfront.KeyValueStore`" pulumi-lang-go="`cloudfront.KeyValueStore`" pulumi-lang-python="`cloudfront.KeyValueStore`" pulumi-lang-yaml="`aws.cloudfront.KeyValueStore`" pulumi-lang-java="`aws.cloudfront.KeyValueStore`">`aws.cloudfront.KeyValueStore`</span> ARNs associated to the function.
  final List<String> keyValueStoreAssociations;

  /// When this resource was last modified.
  final String lastModifiedTime;
  final String name;

  /// Identifier of the function's runtime.
  final String runtime;
  final String stage;

  /// Status of the function. Can be `UNPUBLISHED`, `UNASSOCIATED` or `ASSOCIATED`.
  final String status;

  GetFunctionResult({
    required this.arn,
    required this.code,
    required this.comment,
    required this.etag,
    required this.id,
    required this.keyValueStoreAssociations,
    required this.lastModifiedTime,
    required this.name,
    required this.runtime,
    required this.stage,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['code'] = code;
    map['comment'] = comment;
    map['etag'] = etag;
    map['id'] = id;
    map['keyValueStoreAssociations'] = keyValueStoreAssociations;
    map['lastModifiedTime'] = lastModifiedTime;
    map['name'] = name;
    map['runtime'] = runtime;
    map['stage'] = stage;
    map['status'] = status;
    return map;
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      arn: map['arn'] as String,
      code: map['code'] as String,
      comment: map['comment'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      keyValueStoreAssociations:
          (map['keyValueStoreAssociations'] as List).cast<String>(),
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      runtime: map['runtime'] as String,
      stage: map['stage'] as String,
      status: map['status'] as String,
    );
  }
}
