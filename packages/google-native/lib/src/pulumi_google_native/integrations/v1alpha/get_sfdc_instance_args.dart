// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSfdcInstance.
class GetSfdcInstanceArgs {
  final Input<String> location;
  final Input<String> productId;
  final Input<String>? project;
  final Input<String> sfdcInstanceId;

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
      location: Input.asInput<String>(map['location']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
      sfdcInstanceId: Input.asInput<String>(map['sfdcInstanceId']),
    );
  }
}
