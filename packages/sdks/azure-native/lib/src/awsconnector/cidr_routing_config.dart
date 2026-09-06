// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CidrRoutingConfig
class CidrRoutingConfig {
  /// &lt;p&gt;The CIDR collection ID.&lt;/p&gt;
  final pulumi.Input<String?>? collectionId;
  /// &lt;p&gt;The CIDR collection location name.&lt;/p&gt;
  final pulumi.Input<String?>? locationName;

  /// Creates a new [CidrRoutingConfig].
  /// [collectionId] &lt;p&gt;The CIDR collection ID.&lt;/p&gt;
  /// [locationName] &lt;p&gt;The CIDR collection location name.&lt;/p&gt;
  const CidrRoutingConfig({
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
      collectionId: (() { final guardedValue = map['collectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationName: (() { final guardedValue = map['locationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
