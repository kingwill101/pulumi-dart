// ignore_for_file: unused_element, unnecessary_cast

class GetRecordsResourceRecordSetCidrRoutingConfig {
  /// The CIDR collection ID.
  final String collectionId;

  /// The CIDR collection location name.
  final String locationName;

  GetRecordsResourceRecordSetCidrRoutingConfig({
    required this.collectionId,
    required this.locationName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionId'] = collectionId;
    map['locationName'] = locationName;
    return map;
  }

  factory GetRecordsResourceRecordSetCidrRoutingConfig.fromMap(
      Map<String, dynamic> map) {
    return GetRecordsResourceRecordSetCidrRoutingConfig(
      collectionId: map['collectionId'] as String,
      locationName: map['locationName'] as String,
    );
  }
}
