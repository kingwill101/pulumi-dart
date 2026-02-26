// ignore_for_file: unused_element, unnecessary_cast

/// Available configurations to provision an Instance.
class Config {
  /// The Customer Managed Encryption Key (CMEK) used for data encryption. The CMEK name should follow the format of `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`, where the `location` must match InstanceConfig.location.
  final String cmekKeyName;

  Config({
    required this.cmekKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cmekKeyName'] = cmekKeyName;
    return map;
  }

  factory Config.fromMap(Map<String, dynamic> map) {
    return Config(
      cmekKeyName: map['cmekKeyName'] as String,
    );
  }
}
