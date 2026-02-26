// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getProduct.
class GetProductArgs3 {
  final Input<String> branchId;
  final Input<String> catalogId;
  final Input<String> location;
  final Input<String> productId;
  final Input<String>? project;

  GetProductArgs3({
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

  factory GetProductArgs3.fromMap(Map<String, dynamic> map) {
    return GetProductArgs3(
      branchId: Input.asInput<String>(map['branchId']),
      catalogId: Input.asInput<String>(map['catalogId']),
      location: Input.asInput<String>(map['location']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
