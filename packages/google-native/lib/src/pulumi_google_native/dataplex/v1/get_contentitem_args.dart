// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getContentitem.
class GetContentitemArgs {
  final Input<String> contentitemId;
  final Input<String> lakeId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;

  GetContentitemArgs({
    required this.contentitemId,
    required this.lakeId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentitemId'] = contentitemId;
    map['lakeId'] = lakeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetContentitemArgs.fromMap(Map<String, dynamic> map) {
    return GetContentitemArgs(
      contentitemId: Input.asInput<String>(map['contentitemId']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
