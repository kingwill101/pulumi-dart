import 'package:pulumi/pulumi.dart' as pulumi;
import '../toolset_open_api_toolset/toolset_open_api_toolset.dart';
import 'toolset_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces Toolset Openapi Service Account Auth Config
///
///
///
/// ### Ces Toolset Openapi Oauth Config
///
///
///
/// ### Ces Toolset Openapi Service Agent Id Token Auth Config
///
///
///
/// ### Ces Toolset Openapi Api Key Config
///
///
///
/// ### Ces Toolset Bearer Token Config
///
///
///
///
/// ## Import
///
/// Toolset can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/toolsets/{{toolset_id}}`
///
/// * `{{project}}/{{location}}/{{app}}/{{toolset_id}}`
///
/// * `{{location}}/{{app}}/{{toolset_id}}`
///
/// When using the `pulumi import` command, Toolset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/toolset:Toolset default projects/{{project}}/locations/{{location}}/apps/{{app}}/toolsets/{{toolset_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/toolset:Toolset default {{project}}/{{location}}/{{app}}/{{toolset_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/toolset:Toolset default {{location}}/{{app}}/{{toolset_id}}
/// ```
class Toolset extends pulumi.CustomResource {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> app;

  /// Timestamp when the toolset was created.
  late final pulumi.Output<String> createTime;

  /// The description of the toolset.
  late final pulumi.Output<String?> description;

  /// The display name of the toolset. Must be unique within the same app.
  late final pulumi.Output<String?> displayName;

  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;

  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  late final pulumi.Output<String?> executionType;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  late final pulumi.Output<String> name;

  /// A toolset that contains a list of tools that are defined by an OpenAPI
  /// schema.
  /// Structure is documented below.
  late final pulumi.Output<ToolsetOpenApiToolset?> openApiToolset;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The ID to use for the toolset, which will become the final component of
  /// the toolset's resource name. If not provided, a unique ID will be
  /// automatically assigned for the toolset.
  late final pulumi.Output<String> toolsetId;

  /// Timestamp when the toolset was last updated.
  late final pulumi.Output<String> updateTime;

  Toolset(
    String name, {
    ToolsetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/toolset:Toolset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.etag = registerOutput<String>('etag');
    this.executionType = registerOutput<String?>('executionType');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.openApiToolset =
        registerOutput<ToolsetOpenApiToolset?>('openApiToolset');
    this.project = registerOutput<String>('project');
    this.toolsetId = registerOutput<String>('toolsetId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
