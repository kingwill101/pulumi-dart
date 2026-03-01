// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_grafana_get_workspace_get_workspace_args_doc}
/// Arguments for getWorkspace.
/// {@endtemplate}
/// {@macro pulumi_grafana_get_workspace_get_workspace_args_doc}
class GetWorkspaceArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags assigned to the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Grafana workspace ID.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspaceArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags assigned to the resource
  /// [workspaceId] Grafana workspace ID.
  GetWorkspaceArgs({
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

