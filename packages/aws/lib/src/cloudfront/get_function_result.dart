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
  /// List of `aws.cloudfront.KeyValueStore` ARNs associated to the function.
  final List<String> keyValueStoreAssociations;
  /// When this resource was last modified.
  final String lastModifiedTime;
  final String name;
  /// Identifier of the function's runtime.
  final String runtime;
  final String stage;
  /// Status of the function. Can be `UNPUBLISHED`, `UNASSOCIATED` or `ASSOCIATED`.
  final String status;

  /// Creates a new [GetFunctionResult].
  /// [arn] ARN identifying your CloudFront Function.
  /// [code] Source code of the function
  /// [comment] Comment.
  /// [etag] ETag hash of the function
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyValueStoreAssociations] List of `aws.cloudfront.KeyValueStore` ARNs associated to the function.
  /// [lastModifiedTime] When this resource was last modified.
  /// [name] Required.
  /// [runtime] Identifier of the function's runtime.
  /// [stage] Required.
  /// [status] Status of the function. Can be `UNPUBLISHED`, `UNASSOCIATED` or `ASSOCIATED`.
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
    return <String, dynamic>{
      'arn': arn,
      'code': code,
      'comment': comment,
      'etag': etag,
      'id': id,
      'keyValueStoreAssociations': keyValueStoreAssociations,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'runtime': runtime,
      'stage': stage,
      'status': status,
    };
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      arn: map['arn'] as String,
      code: map['code'] as String,
      comment: map['comment'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      keyValueStoreAssociations: (map['keyValueStoreAssociations'] as List).cast<String>(),
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      runtime: map['runtime'] as String,
      stage: map['stage'] as String,
      status: map['status'] as String,
    );
  }
}

