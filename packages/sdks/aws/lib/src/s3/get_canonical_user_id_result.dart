// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCanonicalUserId.
class GetCanonicalUserIdResult {
  /// Human-friendly name linked to the canonical user ID. The bucket owner's display name. **NOTE:** [This value](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTServiceGET.html) is only included in the response in the US East (N. Virginia), US West (N. California), US West (Oregon), Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific (Tokyo), EU (Ireland), and South America (São Paulo) regions.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;

  /// Creates a new [GetCanonicalUserIdResult].
  /// [displayName] Human-friendly name linked to the canonical user ID. The bucket owner's display name. **NOTE:** [This value](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTServiceGET.html) is only included in the response in the US East (N. Virginia), US West (N. California), US West (Oregon), Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific (Tokyo), EU (Ireland), and South America (São Paulo) regions.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetCanonicalUserIdResult({
    this.displayName,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
    };
  }

  factory GetCanonicalUserIdResult.fromMap(Map<String, dynamic> map) {
    return GetCanonicalUserIdResult(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
