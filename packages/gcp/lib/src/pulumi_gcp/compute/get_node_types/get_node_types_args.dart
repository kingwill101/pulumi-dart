// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNodeTypes.
class GetNodeTypesArgs {
  /// ID of the project to list available node types for.
  /// Should match the project the nodes of this type will be deployed to.
  /// Defaults to the project that the provider is authenticated with.
  final Input<String>? project;

  /// The zone to list node types for. Should be in zone of intended node groups and region of referencing node template. If `zone` is not specified, the provider-level zone must be set and is used
  /// instead.
  final Input<String>? zone;

  GetNodeTypesArgs({
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetNodeTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeTypesArgs(
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
