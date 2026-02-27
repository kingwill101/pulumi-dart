// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUrlList.
class GetUrlListArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> urlListId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      urlListId: pulumi.Input.asInput<String>(map['urlListId']),
    );
  }
}
