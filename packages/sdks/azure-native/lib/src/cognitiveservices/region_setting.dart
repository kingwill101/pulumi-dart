// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The call rate limit Cognitive Services account.
class RegionSetting {
  /// Maps the region to the regional custom subdomain.
  final pulumi.Input<String>? customsubdomain;
  /// Name of the region.
  final pulumi.Input<String>? name;
  /// A value for priority or weighted routing methods.
  final pulumi.Input<double>? value;

  /// Creates a new [RegionSetting].
  /// [customsubdomain] Maps the region to the regional custom subdomain.
  /// [name] Name of the region.
  /// [value] A value for priority or weighted routing methods.
  RegionSetting({
    this.customsubdomain,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customsubdomain': ?customsubdomain,
      'name': ?name,
      'value': ?value,
    };
  }

  factory RegionSetting.fromMap(Map<String, dynamic> map) {
    return RegionSetting(
      customsubdomain: map['customsubdomain'] == null ? null : (map['customsubdomain'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as double).input(),
    );
  }
}

