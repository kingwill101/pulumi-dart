// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getProduct.
class GetProductArgs4 {
  final Input<String> location;
  final Input<String> productId;
  final Input<String>? project;

  GetProductArgs4({
    required this.location,
    required this.productId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetProductArgs4.fromMap(Map<String, dynamic> map) {
    return GetProductArgs4(
      location: Input.asInput<String>(map['location']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
