// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes product display information.
class DisplayInfoResponse {
  /// Configuration display name.
  final pulumi.Input<String> configurationDisplayName;
  /// Product family display name.
  final pulumi.Input<String> productFamilyDisplayName;

  /// Creates a new [DisplayInfoResponse].
  /// [configurationDisplayName] Configuration display name.
  /// [productFamilyDisplayName] Product family display name.
  DisplayInfoResponse({
    required this.configurationDisplayName,
    required this.productFamilyDisplayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationDisplayName': configurationDisplayName,
      'productFamilyDisplayName': productFamilyDisplayName,
    };
  }

  factory DisplayInfoResponse.fromMap(Map<String, dynamic> map) {
    return DisplayInfoResponse(
      configurationDisplayName: pulumi.Input.fromValue(map['configurationDisplayName'] as String),
      productFamilyDisplayName: pulumi.Input.fromValue(map['productFamilyDisplayName'] as String),
    );
  }
}

