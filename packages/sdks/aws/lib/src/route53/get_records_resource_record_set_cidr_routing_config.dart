// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRecordsResourceRecordSetCidrRoutingConfig {
  /// The CIDR collection ID.
  final pulumi.Input<String> collectionId;
  /// The CIDR collection location name.
  final pulumi.Input<String> locationName;

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

  factory GetRecordsResourceRecordSetCidrRoutingConfig.fromMap(Map<String, dynamic> map) {
    return GetRecordsResourceRecordSetCidrRoutingConfig(
      collectionId: (map['collectionId'] as String).input(),
      locationName: (map['locationName'] as String).input(),
    );
  }
}

