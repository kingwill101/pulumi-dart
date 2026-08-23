// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Region spec details
class RegionSpecEntityResponse {
  /// Cloud provider name
  final pulumi.Input<String>? cloud;
  /// Display Name of the region
  final pulumi.Input<String>? name;
  final pulumi.Input<List<String>>? packages;
  /// Region name
  final pulumi.Input<String>? regionName;

  /// Creates a new [RegionSpecEntityResponse].
  /// [cloud] Cloud provider name
  /// [name] Display Name of the region
  /// [packages] Optional.
  /// [regionName] Region name
  const RegionSpecEntityResponse({
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
      cloud: (() { final guardedValue = map['cloud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packages: (() { final guardedValue = map['packages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      regionName: (() { final guardedValue = map['regionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
