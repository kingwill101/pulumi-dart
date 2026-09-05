// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFindingIds.
class GetFindingIdsResult {
  final String? detectorId;
  /// A list of finding IDs for the specified detector.
  final List<String>? findingIds;
  /// Indicates whether findings are present for the specified detector.
  final bool? hasFindings;
  final String? id;
  final String? region;

  /// Creates a new [GetFindingIdsResult].
  /// [detectorId] Optional.
  /// [findingIds] A list of finding IDs for the specified detector.
  /// [hasFindings] Indicates whether findings are present for the specified detector.
  /// [id] Optional.
  /// [region] Optional.
  const GetFindingIdsResult({
    this.detectorId,
    this.findingIds,
    this.hasFindings,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectorId': ?detectorId,
      'findingIds': ?findingIds,
      'hasFindings': ?hasFindings,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetFindingIdsResult.fromMap(Map<String, dynamic> map) {
    return GetFindingIdsResult(
      detectorId: (() { final guardedValue = map['detectorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      findingIds: (() { final guardedValue = map['findingIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      hasFindings: (() { final guardedValue = map['hasFindings']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
