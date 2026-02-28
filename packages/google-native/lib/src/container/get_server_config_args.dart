// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_v1_get_server_config_args_doc}
/// Arguments for getServerConfig.
/// {@endtemplate}
/// {@macro pulumi_container_v1_get_server_config_args_doc}
class GetServerConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? projectId;
  final pulumi.Input<String>? zone;

  /// Creates a new [GetServerConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [projectId] Optional.
  /// [zone] Optional.
  GetServerConfigArgs({
    required String location,
    String? project,
    String? projectId,
    String? zone,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        projectId = pulumi.Input.asOptionalInput<String>(projectId),
        zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetServerConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetServerConfigArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
