// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDataAttributeBinding.
class GetDataAttributeBindingArgs {
  final Input<String> dataAttributeBindingId;
  final Input<String> location;
  final Input<String>? project;

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
          Input.asInput<String>(map['dataAttributeBindingId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
