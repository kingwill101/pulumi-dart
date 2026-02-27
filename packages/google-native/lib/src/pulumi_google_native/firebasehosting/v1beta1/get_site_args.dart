// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSite.
class GetSiteArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;

  GetSiteArgs({
    this.project,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['siteId'] = siteId;
    return map;
  }

  factory GetSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
    );
  }
}
