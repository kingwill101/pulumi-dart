import 'package:pulumi/pulumi.dart' hide Config;
import 'release_args3.dart';

/// Create a `Release`. Release names should reflect the developer's deployment practices. For example, the release name may include the environment name, application name, application version, or any other name meaningful to the developer. Once a `Release` refers to a `Ruleset`, the rules can be enforced by Firebase Rules-enabled services. More than one `Release` may be 'live' concurrently. Consider the following three `Release` names for `projects/foo` and the `Ruleset` to which they refer. Release Name -> Ruleset Name * projects/foo/releases/prod -> projects/foo/rulesets/uuid123 * projects/foo/releases/prod/beta -> projects/foo/rulesets/uuid123 * projects/foo/releases/prod/v23 -> projects/foo/rulesets/uuid456 The relationships reflect a `Ruleset` rollout in progress. The `prod` and `prod/beta` releases refer to the same `Ruleset`. However, `prod/v23` refers to a new `Ruleset`. The `Ruleset` reference for a `Release` may be updated using the UpdateRelease method.
class Release3 extends CustomResource {
  /// Time the release was created.
  late final Output<String> createTime;

  /// Format: `projects/{project_id}/releases/{release_id}`
  late final Output<String> name;
  late final Output<String> project;

  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  late final Output<String> rulesetName;

  /// Time the release was updated.
  late final Output<String> updateTime;

  Release3(
    String name, {
    ReleaseArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:firebaserules/v1:Release',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rulesetName = registerOutput<String>('rulesetName');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
