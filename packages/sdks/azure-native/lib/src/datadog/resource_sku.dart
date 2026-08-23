// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceSku {
  /// Name of the SKU in {PlanId} format. For Terraform, the only allowed value is 'Linked'.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceSku].
  /// [name] Name of the SKU in {PlanId} format. For Terraform, the only allowed value is 'Linked'.
  const ResourceSku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ResourceSku.fromMap(Map<String, dynamic> map) {
    return ResourceSku(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
