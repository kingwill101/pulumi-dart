// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';

/// The sku type.
class SkuResponse {
  /// The name.
  final pulumi.Input<String> name;
  /// The reference to plan.
  final pulumi.Input<ResourceReferenceResponse>? plan;

  /// Creates a new [SkuResponse].
  /// [name] The name.
  /// [plan] The reference to plan.
  const SkuResponse({
    required this.name,
    this.plan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'plan': ?pulumi.Input.mapOptionalInputValue<ResourceReferenceResponse, Map<String, dynamic>>(plan, (value) => value.toMap()),
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
