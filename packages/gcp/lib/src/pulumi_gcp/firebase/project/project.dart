import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';

/// A Google Cloud Firebase instance. This enables Firebase resources on a given Google Project.
/// Since a FirebaseProject is actually also a GCP Project, a FirebaseProject uses underlying GCP
/// identifiers (most importantly, the projectId) as its own for easy interop with GCP APIs.
/// Once Firebase has been added to a Google Project it cannot be removed.
///
/// To get more information about Project, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects)
/// * How-to Guides
/// * Official Documentation
///
/// > **Note:** This resource should usually be used with a provider configuration
/// with `user_project_override = true` unless you wish for your quota
/// project to be different from the Firebase project.
///
/// ## Example Usage
///
/// ### Firebase Project Basic
///
///
///
///
/// ## Import
///
/// Project can be imported using any of these accepted formats:
///
/// * `projects/{{project}}`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, Project can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/project:Project default projects/{{project}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/project:Project default {{project}}
/// ```
class Project extends pulumi.CustomResource {
  /// The GCP project display name
  late final pulumi.Output<String> displayName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The number of the Google Project that Firebase is enabled on.
  late final pulumi.Output<String> projectNumber;

  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.project = registerOutput<String>('project');
    this.projectNumber = registerOutput<String>('projectNumber');
  }
}
