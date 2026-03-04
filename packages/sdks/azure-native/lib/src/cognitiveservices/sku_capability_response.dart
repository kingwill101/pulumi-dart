// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SkuCapability indicates the capability of a certain feature.
class SkuCapabilityResponse {
  /// The name of the SkuCapability.
  final pulumi.Input<String>? name;

  /// The value of the SkuCapability.
  final pulumi.Input<String>? value;

  /// Creates a new [SkuCapabilityResponse].
  /// [name] The name of the SkuCapability.
  /// [value] The value of the SkuCapability.
  SkuCapabilityResponse({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory SkuCapabilityResponse.fromMap(Map<String, dynamic> map) {
    return SkuCapabilityResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
