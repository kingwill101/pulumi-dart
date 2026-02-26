// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getContent.
class GetContentArgs {
  final Input<String> contentId;
  final Input<String> lakeId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;

  GetContentArgs({
    required this.contentId,
    required this.lakeId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentId'] = contentId;
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

  factory GetContentArgs.fromMap(Map<String, dynamic> map) {
    return GetContentArgs(
      contentId: Input.asInput<String>(map['contentId']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
