import 'package:pulumi/pulumi.dart' as pulumi;
import 'boundary_args.dart';

/// Application management boundary.
///
///
/// To get more information about Boundary, see:
///
/// * [API documentation](https://docs.cloud.google.com/app-hub/docs/reference/rest/v1/Boundary)
/// * How-to Guides
/// * [AppHub](https://docs.cloud.google.com/app-hub/docs/)
///
/// ## Example Usage
///
/// ### Apphub Boundary Basic
///
///
///
///
/// ## Import
///
/// Boundary can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/boundary`
///
/// * `{{project}}/{{location}}`
///
/// * `{{location}}`
///
/// When using the `pulumi import` command, Boundary can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apphub/boundary:Boundary default projects/{{project}}/locations/{{location}}/boundary
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/boundary:Boundary default {{project}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/boundary:Boundary default {{location}}
/// ```
class Boundary extends pulumi.CustomResource {
  /// Create time.
  late final pulumi.Output<String> createTime;

  /// Optional. The resource name of the CRM node being attached to the
  /// boundary.
  /// Format: `projects/{project-number}`
  late final pulumi.Output<String?> crmNode;

  /// The location for the Boundary resource. Must be global.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the boundary.
  /// Format: "projects/{project}/locations/{{location}}/boundary"
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Boundary type.
  late final pulumi.Output<String> type;

  /// Update time.
  late final pulumi.Output<String> updateTime;

  Boundary(
    String name, {
    BoundaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/boundary:Boundary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.crmNode = registerOutput<String?>('crmNode');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
