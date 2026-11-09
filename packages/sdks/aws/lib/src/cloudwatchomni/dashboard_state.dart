// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Dashboard resources.
class DashboardState {
  /// ARN of the dashboard.
  final pulumi.Input<String?>? arn;
  /// Dashboard definition, as a JSON document with a `panels` array. Maximum size of 1 MiB.
  final pulumi.Input<String?>? body;
  /// Unique identifier of the dashboard.
  final pulumi.Input<String?>? dashboardId;
  /// Description of the dashboard. Must be 1-1024 characters. Removing the description replaces the dashboard, because the service does not support clearing it.
  final pulumi.Input<String?>? description;
  /// Name of the dashboard. Must be 1-256 characters and can contain letters, numbers, and the characters `_`, `.`, `@`, `~`, `(`, `)`, and `-`.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the space that contains the dashboard.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? spaceId;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [DashboardState].
  /// [arn] ARN of the dashboard.
  /// [body] Dashboard definition, as a JSON document with a `panels` array. Maximum size of 1 MiB.
  /// [dashboardId] Unique identifier of the dashboard.
  /// [description] Description of the dashboard. Must be 1-1024 characters. Removing the description replaces the dashboard, because the service does not support clearing it.
  /// [name] Name of the dashboard. Must be 1-256 characters and can contain letters, numbers, and the characters `_`, `.`, `@`, `~`, `(`, `)`, and `-`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spaceId] ID of the space that contains the dashboard.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const DashboardState({
    this.arn,
    this.body,
    this.dashboardId,
    this.description,
    this.name,
    this.region,
    this.spaceId,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'body': ?body,
      'dashboardId': ?dashboardId,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'spaceId': ?spaceId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DashboardState.fromMap(Map<String, dynamic> map) {
    return DashboardState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dashboardId: (() { final guardedValue = map['dashboardId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceId: (() { final guardedValue = map['spaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
