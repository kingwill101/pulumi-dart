// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The integration account sku.
class IntegrationAccountSkuResponse {
  /// The sku name.
  final pulumi.Input<String> name;

  /// Creates a new [IntegrationAccountSkuResponse].
  /// [name] The sku name.
  IntegrationAccountSkuResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory IntegrationAccountSkuResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountSkuResponse(
      name: (map['name'] as String).input(),
    );
  }
}

