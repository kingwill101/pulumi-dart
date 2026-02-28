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
    final map = <String, dynamic>{};
    map['arns'] = arns;
    map['id'] = id;
    map['region'] = region;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetLbsResult.fromMap(Map<String, dynamic> map) {
    return GetLbsResult(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
