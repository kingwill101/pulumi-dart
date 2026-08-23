// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPoints.
class GetAccessPointsResult {
  /// Set of Amazon Resource Names (ARNs).
  final List<String> arns;
  final String fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Set of identifiers.
  final List<String> ids;
  final String region;

  /// Creates a new [GetAccessPointsResult].
  /// [arns] Set of Amazon Resource Names (ARNs).
  /// [fileSystemId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of identifiers.
  /// [region] Required.
  const GetAccessPointsResult({
    required this.arns,
    required this.fileSystemId,
    required this.id,
    required this.ids,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'fileSystemId': fileSystemId,
      'id': id,
      'ids': ids,
      'region': region,
    };
  }

  factory GetAccessPointsResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsResult(
      arns: (map['arns'] as List).cast<String>(),
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
