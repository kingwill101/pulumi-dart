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
  const GetOrderableDbInstanceResult({
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
    return <String, dynamic>{
      'availabilityZones': availabilityZones,
      'engine': ?engine,
      'engineVersion': engineVersion,
      'id': id,
      'instanceClass': instanceClass,
      'licenseModel': ?licenseModel,
      'preferredInstanceClasses': ?preferredInstanceClasses,
      'region': region,
      'vpc': vpc,
    };
  }

  factory GetOrderableDbInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetOrderableDbInstanceResult(
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      instanceClass: map['instanceClass'] as String,
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredInstanceClasses: (() { final guardedValue = map['preferredInstanceClasses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: map['region'] as String,
      vpc: map['vpc'] as bool,
    );
  }
}
