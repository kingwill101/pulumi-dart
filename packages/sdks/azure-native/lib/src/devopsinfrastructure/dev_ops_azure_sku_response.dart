// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure SKU of the machines in the pool.
class DevOpsAzureSkuResponse {
  /// The Azure SKU name of the machines in the pool.
  final pulumi.Input<String> name;

  /// Creates a new [DevOpsAzureSkuResponse].
  /// [name] The Azure SKU name of the machines in the pool.
  DevOpsAzureSkuResponse({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory DevOpsAzureSkuResponse.fromMap(Map<String, dynamic> map) {
    return DevOpsAzureSkuResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
