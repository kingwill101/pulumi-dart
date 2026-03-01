// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apphub_get_application_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_apphub_get_application_get_application_args_doc}
class GetApplicationArgs {
  final pulumi.Input<String> applicationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> project;

  /// Creates a new [GetApplicationArgs].
  /// [applicationId] Required.
  /// [location] Required.
  /// [project] Required.
  GetApplicationArgs({
    required String applicationId,
    required String location,
    required String project,
  }) : applicationId = pulumi.Input.asInput<String>(applicationId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'location': location,
      'project': project,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      applicationId: map['applicationId'] as String,
      location: map['location'] as String,
      project: map['project'] as String,
    );
  }
}
