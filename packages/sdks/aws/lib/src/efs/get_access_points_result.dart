// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPoints.
class GetAccessPointsResult {
  /// Set of ARNs.
  final List<String>? arns;
  final String? fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of identifiers.
  final List<String>? ids;
  final String? region;

  /// Creates a new [GetAccessPointsResult].
  /// [arns] Set of ARNs.
  /// [fileSystemId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of identifiers.
  /// [region] Optional.
  const GetAccessPointsResult({
    this.arns,
    this.fileSystemId,
    this.id,
    this.ids,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'fileSystemId': ?fileSystemId,
      'id': ?id,
      'ids': ?ids,
      'region': ?region,
    };
  }

  factory GetAccessPointsResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
