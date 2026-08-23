// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the SKU of the IoT Central application.
class AppSkuInfoResponse {
  /// The name of the SKU.
  final pulumi.Input<String> name;

  /// Creates a new [AppSkuInfoResponse].
  /// [name] The name of the SKU.
  const AppSkuInfoResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AppSkuInfoResponse.fromMap(Map<String, dynamic> map) {
    return AppSkuInfoResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
