// ignore_for_file: unused_element, unnecessary_cast

/// The number of spokes of a given type that are associated with a specific hub. The type indicates what kind of resource is associated with the spoke.
class SpokeTypeCountResponse {
  /// The total number of spokes of this type that are associated with the hub.
  final String count;

  /// The type of the spokes.
  final String spokeType;

  SpokeTypeCountResponse({
    required this.count,
    required this.spokeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['spokeType'] = spokeType;
    return map;
  }

  factory SpokeTypeCountResponse.fromMap(Map<String, dynamic> map) {
    return SpokeTypeCountResponse(
      count: map['count'] as String,
      spokeType: map['spokeType'] as String,
    );
  }
}
