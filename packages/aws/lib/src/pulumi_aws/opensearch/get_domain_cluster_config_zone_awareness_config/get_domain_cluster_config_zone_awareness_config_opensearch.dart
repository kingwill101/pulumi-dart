// ignore_for_file: unused_element, unnecessary_cast

class GetDomainClusterConfigZoneAwarenessConfigOpensearch {
  /// Number of availability zones used.
  final int availabilityZoneCount;

  GetDomainClusterConfigZoneAwarenessConfigOpensearch({
    required this.availabilityZoneCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZoneCount'] = availabilityZoneCount;
    return map;
  }

  factory GetDomainClusterConfigZoneAwarenessConfigOpensearch.fromMap(
      Map<String, dynamic> map) {
    return GetDomainClusterConfigZoneAwarenessConfigOpensearch(
      availabilityZoneCount: map['availabilityZoneCount'] as int,
    );
  }
}
