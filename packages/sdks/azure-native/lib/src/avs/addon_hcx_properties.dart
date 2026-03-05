// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an HCX addon
class AddonHcxProperties {
  /// Addon type
  /// Expected value is 'HCX'.
  final pulumi.Input<String> addonType;
  /// The HCX offer, example VMware MaaS Cloud Provider (Enterprise)
  final pulumi.Input<String> offer;

  /// Creates a new [AddonHcxProperties].
  /// [addonType] Addon type
  /// [offer] The HCX offer, example VMware MaaS Cloud Provider (Enterprise)
  AddonHcxProperties({
    required this.addonType,
    required this.offer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonType': addonType,
      'offer': offer,
    };
  }

  factory AddonHcxProperties.fromMap(Map<String, dynamic> map) {
    return AddonHcxProperties(
      addonType: pulumi.Input.fromValue(map['addonType'] as String),
      offer: pulumi.Input.fromValue(map['offer'] as String),
    );
  }
}

