// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getProductSet.
class GetProductSetArgs {
  final Input<String> location;
  final Input<String> productSetId;
  final Input<String>? project;

  GetProductSetArgs({
    required this.location,
    required this.productSetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['productSetId'] = productSetId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetProductSetArgs.fromMap(Map<String, dynamic> map) {
    return GetProductSetArgs(
      location: Input.asInput<String>(map['location']),
      productSetId: Input.asInput<String>(map['productSetId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
