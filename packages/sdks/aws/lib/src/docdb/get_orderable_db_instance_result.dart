// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrderableDbInstance.
class GetOrderableDbInstanceResult {
  /// Availability zones where the instance is available.
  final List<String>? availabilityZones;
  final String? engine;
  final String? engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceClass;
  final String? licenseModel;
  final List<String>? preferredInstanceClasses;
  final String? region;
  final bool? vpc;

  /// Creates a new [GetOrderableDbInstanceResult].
  /// [availabilityZones] Availability zones where the instance is available.
  /// [engine] Optional.
  /// [engineVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceClass] Optional.
  /// [licenseModel] Optional.
  /// [preferredInstanceClasses] Optional.
  /// [region] Optional.
  /// [vpc] Optional.
  const GetOrderableDbInstanceResult({
    this.availabilityZones,
    this.engine,
    this.engineVersion,
    this.id,
    this.instanceClass,
    this.licenseModel,
    this.preferredInstanceClasses,
    this.region,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'id': ?id,
      'instanceClass': ?instanceClass,
      'licenseModel': ?licenseModel,
      'preferredInstanceClasses': ?preferredInstanceClasses,
      'region': ?region,
      'vpc': ?vpc,
    };
  }

  factory GetOrderableDbInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetOrderableDbInstanceResult(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceClass: (() { final guardedValue = map['instanceClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredInstanceClasses: (() { final guardedValue = map['preferredInstanceClasses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
