// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProductSet.
class GetProductSetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> productSetId;
  final pulumi.Input<String>? project;

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
      location: pulumi.Input.asInput<String>(map['location']),
      productSetId: pulumi.Input.asInput<String>(map['productSetId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
