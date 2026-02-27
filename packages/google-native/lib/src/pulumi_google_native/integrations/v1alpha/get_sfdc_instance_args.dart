// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSfdcInstance.
class GetSfdcInstanceArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sfdcInstanceId;

  GetSfdcInstanceArgs({
    required this.location,
    required this.productId,
    this.project,
    required this.sfdcInstanceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sfdcInstanceId'] = sfdcInstanceId;
    return map;
  }

  factory GetSfdcInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSfdcInstanceArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sfdcInstanceId: pulumi.Input.asInput<String>(map['sfdcInstanceId']),
    );
  }
}
