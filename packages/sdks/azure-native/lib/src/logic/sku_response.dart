// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference_response.dart';

/// The sku type.
class SkuResponse {
  /// The name.
  final String name;
  /// The reference to plan.
  final ResourceReferenceResponse? plan;

  /// Creates a new [SkuResponse].
  /// [name] The name.
  /// [plan] The reference to plan.
  SkuResponse({
    required this.name,
    this.plan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'plan': ?plan == null ? null : plan!.toMap(),
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: map['name'] as String,
      plan: map['plan'] == null ? null : ResourceReferenceResponse.fromMap((map['plan'] as Map).cast<String, dynamic>()),
    );
  }
}

