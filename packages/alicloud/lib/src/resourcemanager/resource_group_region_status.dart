// ignore_for_file: unused_element, unnecessary_cast


class ResourceGroupRegionStatus {
  /// The status of the region.
  final String? regionId;
  /// The status of the resource group.
  final String? status;

  /// Creates a new [ResourceGroupRegionStatus].
  /// [regionId] The status of the region.
  /// [status] The status of the resource group.
  ResourceGroupRegionStatus({
    this.regionId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionId': ?regionId,
      'status': ?status,
    };
  }

  factory ResourceGroupRegionStatus.fromMap(Map<String, dynamic> map) {
    return ResourceGroupRegionStatus(
      regionId: map['regionId'] == null ? null : map['regionId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

