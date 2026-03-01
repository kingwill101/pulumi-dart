// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CidrRoutingConfig
class CidrRoutingConfigResponse {
  /// <p>The CIDR collection ID.</p>
  final String? collectionId;
  /// <p>The CIDR collection location name.</p>
  final String? locationName;

  /// Creates a new [CidrRoutingConfigResponse].
  /// [collectionId] <p>The CIDR collection ID.</p>
  /// [locationName] <p>The CIDR collection location name.</p>
  CidrRoutingConfigResponse({
    this.collectionId,
    this.locationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': ?collectionId,
      'locationName': ?locationName,
    };
  }

  factory CidrRoutingConfigResponse.fromMap(Map<String, dynamic> map) {
    return CidrRoutingConfigResponse(
      collectionId: map['collectionId'] == null ? null : map['collectionId'] as String,
      locationName: map['locationName'] == null ? null : map['locationName'] as String,
    );
  }
}

