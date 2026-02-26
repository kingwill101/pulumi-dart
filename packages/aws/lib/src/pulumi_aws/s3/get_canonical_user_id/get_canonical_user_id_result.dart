// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCanonicalUserId.
class GetCanonicalUserIdResult {
  /// Human-friendly name linked to the canonical user ID. The bucket owner's display name. **NOTE:** [This value](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTServiceGET.html) is only included in the response in the US East (N. Virginia), US West (N. California), US West (Oregon), Asia Pacific (Singapore), Asia Pacific (Sydney), Asia Pacific (Tokyo), EU (Ireland), and South America (São Paulo) regions.
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  GetCanonicalUserIdResult({
    required this.displayName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['id'] = id;
    return map;
  }

  factory GetCanonicalUserIdResult.fromMap(Map<String, dynamic> map) {
    return GetCanonicalUserIdResult(
      displayName: map['displayName'] as String,
      id: map['id'] as String,
    );
  }
}
