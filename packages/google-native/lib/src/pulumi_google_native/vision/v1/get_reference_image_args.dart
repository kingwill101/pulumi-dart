// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReferenceImage.
class GetReferenceImageArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> referenceImageId;

  GetReferenceImageArgs({
    required this.location,
    required this.productId,
    this.project,
    required this.referenceImageId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['referenceImageId'] = referenceImageId;
    return map;
  }

  factory GetReferenceImageArgs.fromMap(Map<String, dynamic> map) {
    return GetReferenceImageArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      referenceImageId: pulumi.Input.asInput<String>(map['referenceImageId']),
    );
  }
}
