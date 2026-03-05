// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordsExclusiveResourceRecordSetCidrRoutingConfig {
  /// CIDR collection ID.
  /// See the `aws.route53.CidrCollection` resource for more details.
  final pulumi.Input<String> collectionId;
  /// CIDR collection location name.
  /// See the `aws.route53.CidrLocation` resource for more details.
  /// A `location_name` with an asterisk `"*"` can be used to create a default CIDR record.
  /// `collection_id` is still required for a default record.
  final pulumi.Input<String> locationName;

  /// Creates a new [RecordsExclusiveResourceRecordSetCidrRoutingConfig].
  /// [collectionId] CIDR collection ID.
  /// [locationName] CIDR collection location name.
  RecordsExclusiveResourceRecordSetCidrRoutingConfig({
    required this.collectionId,
    required this.locationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'locationName': locationName,
    };
  }

  factory RecordsExclusiveResourceRecordSetCidrRoutingConfig.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSetCidrRoutingConfig(
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      locationName: pulumi.Input.fromValue(map['locationName'] as String),
    );
  }
}

