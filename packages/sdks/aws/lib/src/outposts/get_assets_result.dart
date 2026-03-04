// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAssets.
class GetAssetsResult {
  final String arn;

  /// List of all the asset ids found. This data source will fail if none are found.
  final List<String> assetIds;
  final List<String>? hostIdFilters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final List<String>? statusIdFilters;

  /// Creates a new [GetAssetsResult].
  /// [arn] Required.
  /// [assetIds] List of all the asset ids found. This data source will fail if none are found.
  /// [hostIdFilters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [statusIdFilters] Optional.
  GetAssetsResult({
    required this.arn,
    required this.assetIds,
    this.hostIdFilters,
    required this.id,
    required this.region,
    this.statusIdFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'assetIds': assetIds,
      'hostIdFilters': ?hostIdFilters,
      'id': id,
      'region': region,
      'statusIdFilters': ?statusIdFilters,
    };
  }

  factory GetAssetsResult.fromMap(Map<String, dynamic> map) {
    return GetAssetsResult(
      arn: map['arn'] as String,
      assetIds: (map['assetIds'] as List).cast<String>(),
      hostIdFilters: (() {
        final guardedValue = map['hostIdFilters'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      id: map['id'] as String,
      region: map['region'] as String,
      statusIdFilters: (() {
        final guardedValue = map['statusIdFilters'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
    );
  }
}
