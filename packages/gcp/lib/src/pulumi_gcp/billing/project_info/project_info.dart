import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_info_args.dart';

/// Billing information for a project.
///
///
/// To get more information about ProjectInfo, see:
///
/// * [API documentation](https://cloud.google.com/billing/docs/reference/rest/v1/projects)
/// * How-to Guides
/// * [Enable, disable, or change billing for a project](https://cloud.google.com/billing/docs/how-to/modify-project)
///
/// ## Example Usage
///
/// ### Billing Project Info Basic
///
///
///
///
/// ## Import
///
/// ProjectInfo can be imported using any of these accepted formats:
///
/// * `projects/{{project}}`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, ProjectInfo can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:billing/projectInfo:ProjectInfo default projects/{{project}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:billing/projectInfo:ProjectInfo default {{project}}
/// ```
class ProjectInfo extends pulumi.CustomResource {
  /// The ID of the billing account associated with the project, if
  /// any. Set to empty string to disable billing for the project.
  /// For example, `"012345-567890-ABCDEF"` or `""`.
  late final pulumi.Output<String> billingAccount;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  ProjectInfo(
    String name, {
    ProjectInfoArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:billing/projectInfo:ProjectInfo',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.billingAccount = registerOutput<String>('billingAccount');
    this.project = registerOutput<String>('project');
  }
}
