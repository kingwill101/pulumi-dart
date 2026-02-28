// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRulesPackages.
class GetRulesPackagesResult {
  /// List of the Amazon Inspector Classic Rules Packages arns available in the AWS region.
  final List<String> arns;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetRulesPackagesResult].
  /// [arns] List of the Amazon Inspector Classic Rules Packages arns available in the AWS region.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetRulesPackagesResult({
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

  factory GetRulesPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetRulesPackagesResult(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
