// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getReferenceImage.
class GetReferenceImageArgs {
  final Input<String> location;
  final Input<String> productId;
  final Input<String>? project;
  final Input<String> referenceImageId;

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
      location: Input.asInput<String>(map['location']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
      referenceImageId: Input.asInput<String>(map['referenceImageId']),
    );
  }
}
