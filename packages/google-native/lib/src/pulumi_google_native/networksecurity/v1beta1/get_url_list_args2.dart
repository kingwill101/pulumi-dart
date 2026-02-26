// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUrlList.
class GetUrlListArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> urlListId;

  GetUrlListArgs2({
    required this.location,
    this.project,
    required this.urlListId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['urlListId'] = urlListId;
    return map;
  }

  factory GetUrlListArgs2.fromMap(Map<String, dynamic> map) {
    return GetUrlListArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      urlListId: Input.asInput<String>(map['urlListId']),
    );
  }
}
