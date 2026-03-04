// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLbs.
class GetLbsResult {
  /// Set of Load Balancer ARNs.
  final List<String> arns;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final Map<String, String>? tags;

  /// Creates a new [GetLbsResult].
  /// [arns] Set of Load Balancer ARNs.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [tags] Optional.
  GetLbsResult({
    required this.arns,
    required this.id,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'id': id,
      'region': region,
      'tags': ?tags,
    };
  }

  factory GetLbsResult.fromMap(Map<String, dynamic> map) {
    return GetLbsResult(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
    );
  }
}
