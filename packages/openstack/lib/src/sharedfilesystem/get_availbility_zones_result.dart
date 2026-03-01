// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAvailbilityZones.
class GetAvailbilityZonesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The names of the availability zones, ordered alphanumerically.
  final List<String> names;
  /// See Argument Reference above.
  final String region;

  /// Creates a new [GetAvailbilityZonesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] The names of the availability zones, ordered alphanumerically.
  /// [region] See Argument Reference above.
  GetAvailbilityZonesResult({
    required this.id,
    required this.names,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'names': names,
      'region': region,
    };
  }

  factory GetAvailbilityZonesResult.fromMap(Map<String, dynamic> map) {
    return GetAvailbilityZonesResult(
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

