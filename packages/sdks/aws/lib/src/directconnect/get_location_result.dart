// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLocation.
class GetLocationResult {
  /// The available MAC Security (MACsec) port speeds for the location.
  final List<String>? availableMacsecPortSpeeds;
  /// The available port speeds for the location.
  final List<String>? availablePortSpeeds;
  /// Names of the service providers for the location.
  final List<String>? availableProviders;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? locationCode;
  /// Name of the location. This includes the name of the colocation partner and the physical site of the building.
  final String? locationName;
  final String? region;

  /// Creates a new [GetLocationResult].
  /// [availableMacsecPortSpeeds] The available MAC Security (MACsec) port speeds for the location.
  /// [availablePortSpeeds] The available port speeds for the location.
  /// [availableProviders] Names of the service providers for the location.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locationCode] Optional.
  /// [locationName] Name of the location. This includes the name of the colocation partner and the physical site of the building.
  /// [region] Optional.
  const GetLocationResult({
    this.availableMacsecPortSpeeds,
    this.availablePortSpeeds,
    this.availableProviders,
    this.id,
    this.locationCode,
    this.locationName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableMacsecPortSpeeds': ?availableMacsecPortSpeeds,
      'availablePortSpeeds': ?availablePortSpeeds,
      'availableProviders': ?availableProviders,
      'id': ?id,
      'locationCode': ?locationCode,
      'locationName': ?locationName,
      'region': ?region,
    };
  }

  factory GetLocationResult.fromMap(Map<String, dynamic> map) {
    return GetLocationResult(
      availableMacsecPortSpeeds: (() { final guardedValue = map['availableMacsecPortSpeeds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      availablePortSpeeds: (() { final guardedValue = map['availablePortSpeeds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      availableProviders: (() { final guardedValue = map['availableProviders']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationCode: (() { final guardedValue = map['locationCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationName: (() { final guardedValue = map['locationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
