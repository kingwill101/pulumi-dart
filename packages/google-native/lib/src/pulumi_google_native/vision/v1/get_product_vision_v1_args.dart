// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProduct.
class GetProductVisionV1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  GetProductVisionV1Args({
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

  factory GetProductVisionV1Args.fromMap(Map<String, dynamic> map) {
    return GetProductVisionV1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
