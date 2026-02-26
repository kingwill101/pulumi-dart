// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTensorboard.
class GetTensorboardArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> tensorboardId;

  GetTensorboardArgs({
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

  factory GetTensorboardArgs.fromMap(Map<String, dynamic> map) {
    return GetTensorboardArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      tensorboardId: Input.asInput<String>(map['tensorboardId']),
    );
  }
}
