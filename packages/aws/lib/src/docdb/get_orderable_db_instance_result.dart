// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getOrderableDbInstance.
class GetOrderableDbInstanceResult {
  /// Availability zones where the instance is available.
  final List<String> availabilityZones;
  final String? engine;
  final String engineVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceClass;
  final String? licenseModel;
  final List<String>? preferredInstanceClasses;
  final String region;
  final bool vpc;

  /// Creates a new [GetOrderableDbInstanceResult].
  /// [availabilityZones] Availability zones where the instance is available.
  /// [engine] Optional.
  /// [engineVersion] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceClass] Required.
  /// [licenseModel] Optional.
  /// [preferredInstanceClasses] Optional.
  /// [region] Required.
  /// [vpc] Required.
  GetOrderableDbInstanceResult({
    required this.availabilityZones,
    this.engine,
    required this.engineVersion,
    required this.id,
    required this.instanceClass,
    this.licenseModel,
    this.preferredInstanceClasses,
    required this.region,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZones'] = availabilityZones;
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    map['engineVersion'] = engineVersion;
    map['id'] = id;
    map['instanceClass'] = instanceClass;
    final licenseModelValue = licenseModel;
    if (licenseModelValue != null) {
      map['licenseModel'] = licenseModelValue;
    }
    final preferredInstanceClassesValue = preferredInstanceClasses;
    if (preferredInstanceClassesValue != null) {
      map['preferredInstanceClasses'] = preferredInstanceClassesValue;
    }
    map['region'] = region;
    map['vpc'] = vpc;
    return map;
  }

  factory GetOrderableDbInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetOrderableDbInstanceResult(
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      instanceClass: map['instanceClass'] as String,
      licenseModel:
          map['licenseModel'] == null ? null : map['licenseModel'] as String,
      preferredInstanceClasses: map['preferredInstanceClasses'] == null
          ? null
          : (map['preferredInstanceClasses'] as List).cast<String>(),
      region: map['region'] as String,
      vpc: map['vpc'] as bool,
    );
  }
}
