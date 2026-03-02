// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details for the Managed Services offer’s plan in Azure Marketplace.
class PlanResponse {
  /// Azure Marketplace plan name.
  final pulumi.Input<String> name;
  /// Azure Marketplace product code.
  final pulumi.Input<String> product;
  /// Azure Marketplace publisher ID.
  final pulumi.Input<String> publisher;
  /// Azure Marketplace plan's version.
  final pulumi.Input<String> version;

  /// Creates a new [PlanResponse].
  /// [name] Azure Marketplace plan name.
  /// [product] Azure Marketplace product code.
  /// [publisher] Azure Marketplace publisher ID.
  /// [version] Azure Marketplace plan's version.
  PlanResponse({
    required this.name,
    required this.product,
    required this.publisher,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'publisher': publisher,
      'version': version,
    };
  }

  factory PlanResponse.fromMap(Map<String, dynamic> map) {
    return PlanResponse(
      name: (map['name'] as String).input(),
      product: (map['product'] as String).input(),
      publisher: (map['publisher'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

