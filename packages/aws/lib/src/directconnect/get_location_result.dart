// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLocation.
class GetLocationResult {
  /// The available MAC Security (MACsec) port speeds for the location.
  final List<String> availableMacsecPortSpeeds;
  /// The available port speeds for the location.
  final List<String> availablePortSpeeds;
  /// Names of the service providers for the location.
  final List<String> availableProviders;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String locationCode;
  /// Name of the location. This includes the name of the colocation partner and the physical site of the building.
  final String locationName;
  final String region;

  /// Creates a new [GetLocationResult].
  /// [availableMacsecPortSpeeds] The available MAC Security (MACsec) port speeds for the location.
  /// [availablePortSpeeds] The available port speeds for the location.
  /// [availableProviders] Names of the service providers for the location.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locationCode] Required.
  /// [locationName] Name of the location. This includes the name of the colocation partner and the physical site of the building.
  /// [region] Required.
  GetLocationResult({
    required this.availableMacsecPortSpeeds,
    required this.availablePortSpeeds,
    required this.availableProviders,
    required this.id,
    required this.locationCode,
    required this.locationName,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableMacsecPortSpeeds': availableMacsecPortSpeeds,
      'availablePortSpeeds': availablePortSpeeds,
      'availableProviders': availableProviders,
      'id': id,
      'locationCode': locationCode,
      'locationName': locationName,
      'region': region,
    };
  }

  factory GetLocationResult.fromMap(Map<String, dynamic> map) {
    return GetLocationResult(
      availableMacsecPortSpeeds: (map['availableMacsecPortSpeeds'] as List).cast<String>(),
      availablePortSpeeds: (map['availablePortSpeeds'] as List).cast<String>(),
      availableProviders: (map['availableProviders'] as List).cast<String>(),
      id: map['id'] as String,
      locationCode: map['locationCode'] as String,
      locationName: map['locationName'] as String,
      region: map['region'] as String,
    );
  }
}

