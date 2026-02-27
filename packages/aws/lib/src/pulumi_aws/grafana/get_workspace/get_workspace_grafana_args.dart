// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkspace.
class GetWorkspaceGrafanaArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags assigned to the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// Grafana workspace ID.
  final pulumi.Input<String> workspaceId;

  GetWorkspaceGrafanaArgs({
    this.region,
    this.tags,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory GetWorkspaceGrafanaArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceGrafanaArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      workspaceId: pulumi.Input.asInput<String>(map['workspaceId']),
    );
  }
}
