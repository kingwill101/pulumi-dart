// ignore_for_file: unused_element, unnecessary_cast


/// Region spec details
class RegionSpecEntityResponse {
  /// Cloud provider name
  final String? cloud;
  /// Display Name of the region
  final String? name;
  final List<String>? packages;
  /// Region name
  final String? regionName;

  /// Creates a new [RegionSpecEntityResponse].
  /// [cloud] Cloud provider name
  /// [name] Display Name of the region
  /// [packages] Optional.
  /// [regionName] Region name
  RegionSpecEntityResponse({
    this.cloud,
    this.name,
    this.packages,
    this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloud': ?cloud,
      'name': ?name,
      'packages': ?packages,
      'regionName': ?regionName,
    };
  }

  factory RegionSpecEntityResponse.fromMap(Map<String, dynamic> map) {
    return RegionSpecEntityResponse(
      cloud: map['cloud'] == null ? null : map['cloud'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      packages: map['packages'] == null ? null : (map['packages'] as List).cast<String>(),
      regionName: map['regionName'] == null ? null : map['regionName'] as String,
    );
  }
}

