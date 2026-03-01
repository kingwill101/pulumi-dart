// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_monitor.dart';

/// {@template pulumi_appconfig_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_appconfig_environment_environment_args_doc}
class EnvironmentArgs {
  /// AppConfig application ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String> applicationId;
  /// Description of the environment. Can be at most 1024 characters.
  final pulumi.Input<String>? description;
  /// Set of Amazon CloudWatch alarms to monitor during the deployment process. Maximum of 5. See Monitor below for more details.
  final pulumi.Input<List<EnvironmentMonitor>>? monitors;
  /// Name for the environment. Must be between 1 and 64 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EnvironmentArgs].
  /// [applicationId] AppConfig application ID. Must be between 4 and 7 characters in length.
  /// [description] Description of the environment. Can be at most 1024 characters.
  /// [monitors] Set of Amazon CloudWatch alarms to monitor during the deployment process. Maximum of 5. See Monitor below for more details.
  /// [name] Name for the environment. Must be between 1 and 64 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  EnvironmentArgs({
    required pulumi.Output<String> applicationId,
    pulumi.Output<String>? description,
    pulumi.Output<List<EnvironmentMonitor>>? monitors,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      description = pulumi.Input.asOptionalInput<String>(description),
      monitors = pulumi.Input.asOptionalInput<List<EnvironmentMonitor>>(monitors),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'description': ?description,
      'monitors': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentMonitor>, List<Map<String, dynamic>>>(monitors, (value) => pulumi.Input.encodeList<EnvironmentMonitor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      monitors: map['monitors'] == null ? null : pulumi.Output.create<List<EnvironmentMonitor>>(pulumi.Input.decodeList<EnvironmentMonitor>(map['monitors'], (value) => EnvironmentMonitor.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

