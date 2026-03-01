// ignore_for_file: unused_element, unnecessary_cast


class ResourceSkuResponse {
  /// Name of the SKU in {PlanId} format. For Terraform, the only allowed value is 'Linked'.
  final String name;

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
      name: map['name'] as String,
    );
  }
}

