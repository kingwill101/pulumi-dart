// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure SKU of the machines in the pool.
class DevOpsAzureSku {
  /// The Azure SKU name of the machines in the pool.
  final pulumi.Input<String> name;

  /// Creates a new [DevOpsAzureSku].
  /// [name] The Azure SKU name of the machines in the pool.
  DevOpsAzureSku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DevOpsAzureSku.fromMap(Map<String, dynamic> map) {
    return DevOpsAzureSku(
      name: (map['name'] as String).input(),
    );
  }
}

