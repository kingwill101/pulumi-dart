// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatchomni_dashboard_dashboard_args_doc}
/// The set of arguments for Dashboard.
/// {@endtemplate}
/// {@macro pulumi_cloudwatchomni_dashboard_dashboard_args_doc}
class DashboardArgs {
  /// Dashboard definition, as a JSON document with a `panels` array. Maximum size of 1 MiB.
  final pulumi.Input<String> body;
  /// Description of the dashboard. Must be 1-1024 characters. Removing the description replaces the dashboard, because the service does not support clearing it.
  final pulumi.Input<String?>? description;
  /// Name of the dashboard. Must be 1-256 characters and can contain letters, numbers, and the characters `_`, `.`, `@`, `~`, `(`, `)`, and `-`.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the space that contains the dashboard.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> spaceId;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DashboardArgs].
  /// [body] Dashboard definition, as a JSON document with a `panels` array. Maximum size of 1 MiB.
  /// [description] Description of the dashboard. Must be 1-1024 characters. Removing the description replaces the dashboard, because the service does not support clearing it.
  /// [name] Name of the dashboard. Must be 1-256 characters and can contain letters, numbers, and the characters `_`, `.`, `@`, `~`, `(`, `)`, and `-`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spaceId] ID of the space that contains the dashboard.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const DashboardArgs({
    required this.body,
    this.description,
    this.name,
    this.region,
    required this.spaceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'spaceId': spaceId,
      'tags': ?tags,
    };
  }

  factory DashboardArgs.fromMap(Map<String, dynamic> map) {
    return DashboardArgs(
      body: pulumi.Input.fromValue(map['body'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceId: pulumi.Input.fromValue(map['spaceId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
