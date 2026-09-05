// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFunction.
class GetFunctionResult {
  /// ARN identifying your CloudFront Function.
  final String? arn;
  /// Source code of the function
  final String? code;
  /// Comment.
  final String? comment;
  /// ETag hash of the function
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of `aws.cloudfront.KeyValueStore` ARNs associated to the function.
  final List<String>? keyValueStoreAssociations;
  /// When this resource was last modified.
  final String? lastModifiedTime;
  final String? name;
  /// Identifier of the function's runtime.
  final String? runtime;
  final String? stage;
  /// Status of the function. Can be `UNPUBLISHED`, `UNASSOCIATED` or `ASSOCIATED`.
  final String? status;

  /// Creates a new [GetFunctionResult].
  /// [arn] ARN identifying your CloudFront Function.
  /// [code] Source code of the function
  /// [comment] Comment.
  /// [etag] ETag hash of the function
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyValueStoreAssociations] List of `aws.cloudfront.KeyValueStore` ARNs associated to the function.
  /// [lastModifiedTime] When this resource was last modified.
  /// [name] Optional.
  /// [runtime] Identifier of the function's runtime.
  /// [stage] Optional.
  /// [status] Status of the function. Can be `UNPUBLISHED`, `UNASSOCIATED` or `ASSOCIATED`.
  const GetFunctionResult({
    this.arn,
    this.code,
    this.comment,
    this.etag,
    this.id,
    this.keyValueStoreAssociations,
    this.lastModifiedTime,
    this.name,
    this.runtime,
    this.stage,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'code': ?code,
      'comment': ?comment,
      'etag': ?etag,
      'id': ?id,
      'keyValueStoreAssociations': ?keyValueStoreAssociations,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'runtime': ?runtime,
      'stage': ?stage,
      'status': ?status,
    };
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyValueStoreAssociations: (() { final guardedValue = map['keyValueStoreAssociations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
