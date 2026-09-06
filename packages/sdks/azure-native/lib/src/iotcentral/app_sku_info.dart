// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the SKU of the IoT Central application.
class AppSkuInfo {
  /// The name of the SKU.
  final pulumi.Input<dynamic> name;

  /// Creates a new [AppSkuInfo].
  /// [name] The name of the SKU.
  const AppSkuInfo({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AppSkuInfo.fromMap(Map<String, dynamic> map) {
    return AppSkuInfo(
      name: pulumi.Input.fromValue(map['name']),
    );
  }
}
