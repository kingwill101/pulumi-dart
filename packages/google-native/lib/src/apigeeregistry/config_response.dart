// ignore_for_file: unused_element, unnecessary_cast

/// Available configurations to provision an Instance.
class ConfigResponse {
  /// The Customer Managed Encryption Key (CMEK) used for data encryption. The CMEK name should follow the format of `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`, where the `location` must match InstanceConfig.location.
  final String cmekKeyName;

  /// The GCP location where the Instance resides.
  final String location;

  /// Creates a new [ConfigResponse].
  /// [cmekKeyName] The Customer Managed Encryption Key (CMEK) used for data encryption. The CMEK name should follow the format of `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`, where the `location` must match InstanceConfig.location.
  /// [location] The GCP location where the Instance resides.
  ConfigResponse({required this.cmekKeyName, required this.location});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cmekKeyName': cmekKeyName, 'location': location};
  }

  factory ConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConfigResponse(
      cmekKeyName: map['cmekKeyName'] as String,
      location: map['location'] as String,
    );
  }
}
