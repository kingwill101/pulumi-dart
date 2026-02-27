// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTensorboard.
class GetTensorboardArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> tensorboardId;

  GetTensorboardArgs2({
    required this.location,
    this.project,
    required this.tensorboardId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tensorboardId'] = tensorboardId;
    return map;
  }

  factory GetTensorboardArgs2.fromMap(Map<String, dynamic> map) {
    return GetTensorboardArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      tensorboardId: Input.asInput<String>(map['tensorboardId']),
    );
  }
}
