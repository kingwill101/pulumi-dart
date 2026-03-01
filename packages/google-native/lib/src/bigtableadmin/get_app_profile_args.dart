// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtableadmin_v2_get_app_profile_args_doc}
/// Arguments for getAppProfile.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_get_app_profile_args_doc}
class GetAppProfileArgs {
  final pulumi.Input<String> appProfileId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppProfileArgs].
  /// [appProfileId] Required.
  /// [instanceId] Required.
  /// [project] Optional.
  GetAppProfileArgs({
    required String appProfileId,
    required String instanceId,
    String? project,
  }) : appProfileId = pulumi.Input.asInput<String>(appProfileId),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appProfileId': appProfileId,
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory GetAppProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetAppProfileArgs(
      appProfileId: map['appProfileId'] as String,
      instanceId: map['instanceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
