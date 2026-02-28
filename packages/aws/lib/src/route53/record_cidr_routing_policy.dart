// ignore_for_file: unused_element, unnecessary_cast

class RecordCidrRoutingPolicy {
  /// The CIDR collection ID. See the `aws.route53.CidrCollection` resource for more details.
  final String collectionId;

  /// The CIDR collection location name. See the `aws.route53.CidrLocation` resource for more details. A `location_name` with an asterisk `"*"` can be used to create a default CIDR record. `collection_id` is still required for default record.
  final String locationName;

  /// Creates a new [RecordCidrRoutingPolicy].
  /// [collectionId] The CIDR collection ID. See the `aws.route53.CidrCollection` resource for more details.
  /// [locationName] The CIDR collection location name. See the `aws.route53.CidrLocation` resource for more details. A `location_name` with an asterisk `"*"` can be used to create a default CIDR record. `collection_id` is still required for default record.
  RecordCidrRoutingPolicy({
    required this.collectionId,
    required this.locationName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionId'] = collectionId;
    map['locationName'] = locationName;
    return map;
  }

  factory RecordCidrRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordCidrRoutingPolicy(
      collectionId: map['collectionId'] as String,
      locationName: map['locationName'] as String,
    );
  }
}
