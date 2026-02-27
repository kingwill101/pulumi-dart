// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataAttributeBinding.
class GetDataAttributeBindingArgs {
  final pulumi.Input<String> dataAttributeBindingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDataAttributeBindingArgs({
    required this.dataAttributeBindingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataAttributeBindingId'] = dataAttributeBindingId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDataAttributeBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetDataAttributeBindingArgs(
      dataAttributeBindingId:
          pulumi.Input.asInput<String>(map['dataAttributeBindingId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
