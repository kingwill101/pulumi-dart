// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLinks.
class GetLinksResult2 {
  /// Set of ARN of the Links.
  final List<String> arns;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetLinksResult2({
    required this.arns,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arns'] = arns;
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetLinksResult2.fromMap(Map<String, dynamic> map) {
    return GetLinksResult2(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
