// ignore_for_file: unused_element, unnecessary_cast


/// The filters that will be applied to determine which resources to remediate.
class RemediationFilters {
  /// The resource locations that will be remediated.
  final List<String>? locations;
  /// The IDs of the resources that will be remediated. Can specify at most 100 IDs. This filter cannot be used when ReEvaluateCompliance is set to ReEvaluateCompliance, and cannot be empty if provided.
  final List<String>? resourceIds;

  /// Creates a new [RemediationFilters].
  /// [locations] The resource locations that will be remediated.
  /// [resourceIds] The IDs of the resources that will be remediated. Can specify at most 100 IDs. This filter cannot be used when ReEvaluateCompliance is set to ReEvaluateCompliance, and cannot be empty if provided.
  RemediationFilters({
    this.locations,
    this.resourceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'resourceIds': ?resourceIds,
    };
  }

  factory RemediationFilters.fromMap(Map<String, dynamic> map) {
    return RemediationFilters(
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      resourceIds: map['resourceIds'] == null ? null : (map['resourceIds'] as List).cast<String>(),
    );
  }
}

