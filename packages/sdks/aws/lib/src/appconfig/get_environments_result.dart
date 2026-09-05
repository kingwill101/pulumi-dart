// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvironments.
class GetEnvironmentsResult {
  final String? applicationId;
  /// Set of Environment IDs associated with this AppConfig Application.
  final List<String>? environmentIds;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetEnvironmentsResult].
  /// [applicationId] Optional.
  /// [environmentIds] Set of Environment IDs associated with this AppConfig Application.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetEnvironmentsResult({
    this.applicationId,
    this.environmentIds,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'environmentIds': ?environmentIds,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetEnvironmentsResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentsResult(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environmentIds: (() { final guardedValue = map['environmentIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
