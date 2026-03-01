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
  GetEnvironmentArgs({
    required pulumi.Output<String> applicationId,
    required pulumi.Output<String> environmentId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

