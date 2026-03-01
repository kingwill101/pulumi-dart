// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_monitor.dart';

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  /// AppConfig application ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String>? applicationId;
  /// ARN of the AppConfig Environment.
  final pulumi.Input<String>? arn;
  /// Description of the environment. Can be at most 1024 characters.
  final pulumi.Input<String>? description;
  /// AppConfig environment ID.
  final pulumi.Input<String>? environmentId;
  /// Set of Amazon CloudWatch alarms to monitor during the deployment process. Maximum of 5. See Monitor below for more details.
  final pulumi.Input<List<EnvironmentMonitor>>? monitors;
  /// Name for the environment. Must be between 1 and 64 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the environment. Possible values are `READY_FOR_DEPLOYMENT`, `DEPLOYING`, `ROLLING_BACK`
  /// or `ROLLED_BACK`.
  final pulumi.Input<String>? state;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [EnvironmentState].
  /// [applicationId] AppConfig application ID. Must be between 4 and 7 characters in length.
  /// [arn] ARN of the AppConfig Environment.
  /// [description] Description of the environment. Can be at most 1024 characters.
  /// [environmentId] AppConfig environment ID.
  /// [monitors] Set of Amazon CloudWatch alarms to monitor during the deployment process. Maximum of 5. See Monitor below for more details.
  /// [name] Name for the environment. Must be between 1 and 64 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the environment. Possible values are `READY_FOR_DEPLOYMENT`, `DEPLOYING`, `ROLLING_BACK`
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  EnvironmentState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? environmentId,
    pulumi.Output<List<EnvironmentMonitor>>? monitors,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      monitors = pulumi.Input.asOptionalInput<List<EnvironmentMonitor>>(monitors),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'arn': ?arn,
      'description': ?description,
      'environmentId': ?environmentId,
      'monitors': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentMonitor>, List<Map<String, dynamic>>>(monitors, (value) => pulumi.Input.encodeList<EnvironmentMonitor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory EnvironmentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      monitors: map['monitors'] == null ? null : pulumi.Output.create<List<EnvironmentMonitor>>(pulumi.Input.decodeList<EnvironmentMonitor>(map['monitors'], (value) => EnvironmentMonitor.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

