// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRateBasedMod.
class GetRateBasedModResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;

  /// Creates a new [GetRateBasedModResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  const GetRateBasedModResult({
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetRateBasedModResult.fromMap(Map<String, dynamic> map) {
    return GetRateBasedModResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
