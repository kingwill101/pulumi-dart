// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceSkuResponse {
  /// Name of the SKU in {PlanId} format. For Terraform, the only allowed value is 'Linked'.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceSkuResponse].
  /// [name] Name of the SKU in {PlanId} format. For Terraform, the only allowed value is 'Linked'.
  ResourceSkuResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ResourceSkuResponse.fromMap(Map<String, dynamic> map) {
    return ResourceSkuResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

