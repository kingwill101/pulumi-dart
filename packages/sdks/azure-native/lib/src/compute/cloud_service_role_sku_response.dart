// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the cloud service role sku.
class CloudServiceRoleSkuResponse {
  /// Specifies the number of role instances in the cloud service.
  final pulumi.Input<double>? capacity;
  /// The sku name. NOTE: If the new SKU is not supported on the hardware the cloud service is currently on, you need to delete and recreate the cloud service or move back to the old sku.
  final pulumi.Input<String>? name;
  /// Specifies the tier of the cloud service. Possible Values are <br /><br /> **Standard** <br /><br /> **Basic**
  final pulumi.Input<String>? tier;

  /// Creates a new [CloudServiceRoleSkuResponse].
  /// [capacity] Specifies the number of role instances in the cloud service.
  /// [name] The sku name. NOTE: If the new SKU is not supported on the hardware the cloud service is currently on, you need to delete and recreate the cloud service or move back to the old sku.
  /// [tier] Specifies the tier of the cloud service. Possible Values are <br /><br /> **Standard** <br /><br /> **Basic**
  CloudServiceRoleSkuResponse({
    this.capacity,
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory CloudServiceRoleSkuResponse.fromMap(Map<String, dynamic> map) {
    return CloudServiceRoleSkuResponse(
      capacity: map['capacity'] == null ? null : (map['capacity']! as double).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

