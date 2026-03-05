// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFindingIds.
class GetFindingIdsResult {
  final String detectorId;

  /// A list of finding IDs for the specified detector.
  final List<String> findingIds;

  /// Indicates whether findings are present for the specified detector.
  final bool hasFindings;
  final String id;
  final String region;

  /// Creates a new [GetFindingIdsResult].
  /// [detectorId] Required.
  /// [findingIds] A list of finding IDs for the specified detector.
  /// [hasFindings] Indicates whether findings are present for the specified detector.
  /// [id] Required.
  /// [region] Required.
  GetFindingIdsResult({
    required this.detectorId,
    required this.findingIds,
    required this.hasFindings,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectorId': detectorId,
      'findingIds': findingIds,
      'hasFindings': hasFindings,
      'id': id,
      'region': region,
    };
  }

  factory GetFindingIdsResult.fromMap(Map<String, dynamic> map) {
    return GetFindingIdsResult(
      detectorId: map['detectorId'] as String,
      findingIds: (map['findingIds'] as List).cast<String>(),
      hasFindings: map['hasFindings'] as bool,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
