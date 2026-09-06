// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hub billing info.
class HubBillingInfoFormat {
  /// The maximum number of units can be used.  One unit is 10,000 Profiles and 100,000 Interactions.
  final pulumi.Input<int?>? maxUnits;
  /// The minimum number of units will be billed. One unit is 10,000 Profiles and 100,000 Interactions.
  final pulumi.Input<int?>? minUnits;
  /// The sku name.
  final pulumi.Input<String?>? skuName;

  /// Creates a new [HubBillingInfoFormat].
  /// [maxUnits] The maximum number of units can be used.  One unit is 10,000 Profiles and 100,000 Interactions.
  /// [minUnits] The minimum number of units will be billed. One unit is 10,000 Profiles and 100,000 Interactions.
  /// [skuName] The sku name.
  const HubBillingInfoFormat({
    this.maxUnits,
    this.minUnits,
    this.skuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUnits': ?maxUnits,
      'minUnits': ?minUnits,
      'skuName': ?skuName,
    };
  }

  factory HubBillingInfoFormat.fromMap(Map<String, dynamic> map) {
    return HubBillingInfoFormat(
      maxUnits: (() { final guardedValue = map['maxUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minUnits: (() { final guardedValue = map['minUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
