// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CidrRoutingConfig
class CidrRoutingConfig {
  /// <p>The CIDR collection ID.</p>
  final pulumi.Input<String>? collectionId;
  /// <p>The CIDR collection location name.</p>
  final pulumi.Input<String>? locationName;

  /// Creates a new [CidrRoutingConfig].
  /// [collectionId] <p>The CIDR collection ID.</p>
  /// [locationName] <p>The CIDR collection location name.</p>
  CidrRoutingConfig({
    this.collectionId,
    this.locationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': ?collectionId,
      'locationName': ?locationName,
    };
  }

  factory CidrRoutingConfig.fromMap(Map<String, dynamic> map) {
    return CidrRoutingConfig(
      collectionId: map['collectionId'] == null ? null : (map['collectionId'] as String).input(),
      locationName: map['locationName'] == null ? null : (map['locationName'] as String).input(),
    );
  }
}

