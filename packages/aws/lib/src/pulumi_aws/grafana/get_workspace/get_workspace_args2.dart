// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkspace.
class GetWorkspaceArgs2 {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags assigned to the resource
  final Input<Map<String, String>>? tags;

  /// Grafana workspace ID.
  final Input<String> workspaceId;

  GetWorkspaceArgs2({
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

  factory GetWorkspaceArgs2.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceArgs2(
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      workspaceId: Input.asInput<String>(map['workspaceId']),
    );
  }
}
