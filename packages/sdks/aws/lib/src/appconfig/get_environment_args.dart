// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfig_get_environment_get_environment_args_doc}
/// Arguments for getEnvironment.
/// {@endtemplate}
/// {@macro pulumi_appconfig_get_environment_get_environment_args_doc}
class GetEnvironmentArgs {
  /// ID of the AppConfig Application to which this Environment belongs.
  final pulumi.Input<String> applicationId;
  /// ID of the AppConfig Environment.
  final pulumi.Input<String> environmentId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEnvironmentArgs].
  /// [applicationId] ID of the AppConfig Application to which this Environment belongs.
  /// [environmentId] ID of the AppConfig Environment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags for the resource.
  const GetEnvironmentArgs({
    required this.applicationId,
    required this.environmentId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'environmentId': environmentId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
