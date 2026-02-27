// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProduct.
class GetProductRetailV2betaArgs {
  final pulumi.Input<String> branchId;
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  GetProductRetailV2betaArgs({
    required this.branchId,
    required this.catalogId,
    required this.location,
    required this.productId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['branchId'] = branchId;
    map['catalogId'] = catalogId;
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetProductRetailV2betaArgs.fromMap(Map<String, dynamic> map) {
    return GetProductRetailV2betaArgs(
      branchId: pulumi.Input.asInput<String>(map['branchId']),
      catalogId: pulumi.Input.asInput<String>(map['catalogId']),
      location: pulumi.Input.asInput<String>(map['location']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
