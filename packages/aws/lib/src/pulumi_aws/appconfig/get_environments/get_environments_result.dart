// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEnvironments.
class GetEnvironmentsResult {
  final String applicationId;

  /// Set of Environment IDs associated with this AppConfig Application.
  final List<String> environmentIds;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetEnvironmentsResult({
    required this.applicationId,
    required this.environmentIds,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['environmentIds'] = environmentIds;
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetEnvironmentsResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentsResult(
      applicationId: map['applicationId'] as String,
      environmentIds: (map['environmentIds'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
