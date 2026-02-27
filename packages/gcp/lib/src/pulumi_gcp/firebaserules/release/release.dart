import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_args.dart';

/// For more information, see:
/// * [Get started with Firebase Security Rules](https://firebase.google.com/docs/rules/get-started)
/// ## Example Usage
///
/// ### Firestore_release
/// Creates a Firebase Rules Release to the default Cloud Firestore instance
///
/// ### Firestore_release_additional
/// Creates a Firebase Rules Release to an additional Cloud Firestore instance
///
/// ## Import
///
/// Release can be imported using any of these accepted formats:
/// * `projects/{{project}}/releases/{{name}}`
///
/// When using the `pulumi import` command, Release can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebaserules/release:Release default projects/{{project}}/releases/{{name}}
/// ```
class Release extends pulumi.CustomResource {
  /// Output only. Time the release was created.
  late final pulumi.Output<String> createTime;

  /// Disable the release to keep it from being served. The response code of NOT_FOUND will be given for executables generated from this Release.
  late final pulumi.Output<bool> disabled;

  /// Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore'
  late final pulumi.Output<String> name;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  ///
  ///
  ///
  /// - - -
  late final pulumi.Output<String> rulesetName;

  /// Output only. Time the release was updated.
  late final pulumi.Output<String> updateTime;

  Release(
    String name, {
    ReleaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebaserules/release:Release',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.disabled = registerOutput<bool>('disabled');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rulesetName = registerOutput<String>('rulesetName');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
