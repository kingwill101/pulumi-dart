// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_logging_server_args_doc}
/// Arguments for getLoggingServer.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_logging_server_args_doc}
class GetLoggingServerArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> loggingServerId;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLoggingServerArgs].
  /// [location] Required.
  /// [loggingServerId] Required.
  /// [privateCloudId] Required.
  /// [project] Optional.
  GetLoggingServerArgs({
    required String location,
    required String loggingServerId,
    required String privateCloudId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        loggingServerId = pulumi.Input.asInput<String>(loggingServerId),
        privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['loggingServerId'] = loggingServerId;
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetLoggingServerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoggingServerArgs(
      location: map['location'] as String,
      loggingServerId: map['loggingServerId'] as String,
      privateCloudId: map['privateCloudId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
