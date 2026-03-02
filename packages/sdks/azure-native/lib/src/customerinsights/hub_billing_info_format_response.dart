// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hub billing info.
class HubBillingInfoFormatResponse {
  /// The maximum number of units can be used.  One unit is 10,000 Profiles and 100,000 Interactions.
  final pulumi.Input<int>? maxUnits;
  /// The minimum number of units will be billed. One unit is 10,000 Profiles and 100,000 Interactions.
  final pulumi.Input<int>? minUnits;
  /// The sku name.
  final pulumi.Input<String>? skuName;

  /// Creates a new [HubBillingInfoFormatResponse].
  /// [maxUnits] The maximum number of units can be used.  One unit is 10,000 Profiles and 100,000 Interactions.
  /// [minUnits] The minimum number of units will be billed. One unit is 10,000 Profiles and 100,000 Interactions.
  /// [skuName] The sku name.
  HubBillingInfoFormatResponse({
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

  factory HubBillingInfoFormatResponse.fromMap(Map<String, dynamic> map) {
    return HubBillingInfoFormatResponse(
      maxUnits: map['maxUnits'] == null ? null : (map['maxUnits'] as int).input(),
      minUnits: map['minUnits'] == null ? null : (map['minUnits'] as int).input(),
      skuName: map['skuName'] == null ? null : (map['skuName'] as String).input(),
    );
  }
}

