// ignore_for_file: unused_element, unnecessary_cast


class GetRouteEntriesEntryConflict {
  /// The destination CIDR block of the route entry to query.
  final String cidrBlock;
  /// ID of the CEN instance.
  final String instanceId;
  /// The type of the CEN child instance.
  final String instanceType;
  /// ID of the region where the conflicted route entry is located.
  final String regionId;
  /// Reasons of exceptions.
  final String status;

  /// Creates a new [GetRouteEntriesEntryConflict].
  /// [cidrBlock] The destination CIDR block of the route entry to query.
  /// [instanceId] ID of the CEN instance.
  /// [instanceType] The type of the CEN child instance.
  /// [regionId] ID of the region where the conflicted route entry is located.
  /// [status] Reasons of exceptions.
  GetRouteEntriesEntryConflict({
    required this.cidrBlock,
    required this.instanceId,
    required this.instanceType,
    required this.regionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'instanceId': instanceId,
      'instanceType': instanceType,
      'regionId': regionId,
      'status': status,
    };
  }

  factory GetRouteEntriesEntryConflict.fromMap(Map<String, dynamic> map) {
    return GetRouteEntriesEntryConflict(
      cidrBlock: map['cidrBlock'] as String,
      instanceId: map['instanceId'] as String,
      instanceType: map['instanceType'] as String,
      regionId: map['regionId'] as String,
      status: map['status'] as String,
    );
  }
}

