// ignore_for_file: unused_element, unnecessary_cast

class ResourceStatusSchedulingResponse {
  /// Specifies the availability domain (AD), which this instance should be scheduled on. The AD belongs to the spread GroupPlacementPolicy resource policy that has been assigned to the instance. Specify a value between 1-max count of availability domains in your GroupPlacementPolicy. See go/placement-policy-extension for more details.
  final int availabilityDomain;

  /// Time in future when the instance will be terminated in RFC3339 text format.
  final String terminationTimestamp;

  ResourceStatusSchedulingResponse({
    required this.availabilityDomain,
    required this.terminationTimestamp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityDomain'] = availabilityDomain;
    map['terminationTimestamp'] = terminationTimestamp;
    return map;
  }

  factory ResourceStatusSchedulingResponse.fromMap(Map<String, dynamic> map) {
    return ResourceStatusSchedulingResponse(
      availabilityDomain: map['availabilityDomain'] as int,
      terminationTimestamp: map['terminationTimestamp'] as String,
    );
  }
}
