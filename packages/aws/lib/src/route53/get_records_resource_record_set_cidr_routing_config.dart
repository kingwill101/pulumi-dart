// ignore_for_file: unused_element, unnecessary_cast

class GetRecordsResourceRecordSetCidrRoutingConfig {
  /// The CIDR collection ID.
  final String collectionId;

  /// The CIDR collection location name.
  final String locationName;

  /// Creates a new [GetRecordsResourceRecordSetCidrRoutingConfig].
  /// [collectionId] The CIDR collection ID.
  /// [locationName] The CIDR collection location name.
  GetRecordsResourceRecordSetCidrRoutingConfig({
    required this.collectionId,
    required this.locationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'locationName': locationName,
    };
  }

  factory GetRecordsResourceRecordSetCidrRoutingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRecordsResourceRecordSetCidrRoutingConfig(
      collectionId: map['collectionId'] as String,
      locationName: map['locationName'] as String,
    );
  }
}
