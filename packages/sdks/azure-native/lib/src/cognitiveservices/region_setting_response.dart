// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The call rate limit Cognitive Services account.
class RegionSettingResponse {
  /// Maps the region to the regional custom subdomain.
  final pulumi.Input<String>? customsubdomain;
  /// Name of the region.
  final pulumi.Input<String>? name;
  /// A value for priority or weighted routing methods.
  final pulumi.Input<double>? value;

  /// Creates a new [RegionSettingResponse].
  /// [customsubdomain] Maps the region to the regional custom subdomain.
  /// [name] Name of the region.
  /// [value] A value for priority or weighted routing methods.
  const RegionSettingResponse({
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

  factory RegionSettingResponse.fromMap(Map<String, dynamic> map) {
    return RegionSettingResponse(
      customsubdomain: (() { final guardedValue = map['customsubdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

