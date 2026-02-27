// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getUrlList.
class GetUrlListArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> urlListId;

  GetUrlListArgs({
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

  factory GetUrlListArgs.fromMap(Map<String, dynamic> map) {
    return GetUrlListArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      urlListId: Input.asInput<String>(map['urlListId']),
    );
  }
}
