import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_tool_version_tool/cx_tool_version_tool.dart';
import 'cx_tool_version_args.dart';

/// Tool version is a snapshot of the tool at certain timestamp.
///
///
/// To get more information about ToolVersion, see:
///
/// * [API documentation](https://cloud.devsite.corp.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools.versions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
///
///
/// ## Example Usage
///
/// ### Dialogflowcx Tool Version Open Api
///
///
///
/// ### Dialogflowcx Tool Version Data Store
///
///
///
/// ### Dialogflowcx Tool Version Function
///
///
///
/// ### Dialogflowcx Tool Version Connector
///
///
///
///
/// ## Import
///
/// ToolVersion can be imported using any of these accepted formats:
///
/// * `{{parent}}/versions/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, ToolVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxToolVersion:CxToolVersion default {{parent}}/versions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxToolVersion:CxToolVersion default {{parent}}/{{name}}
/// ```
class CxToolVersion extends pulumi.CustomResource {
  /// Last time the tool version was created or modified.
  /// Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String> createTime;

  /// The display name of the tool version.
  late final pulumi.Output<String> displayName;

  /// The unique identifier of the tool version.
  /// Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/tools/<ToolID>/versions/<VersionID>.
  late final pulumi.Output<String> name;

  /// The tool to create a Version for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/tools/<Tool ID>.
  late final pulumi.Output<String> parent;

  /// Snapshot of the tool to be associated with this version.
  /// Structure is documented below.
  late final pulumi.Output<CxToolVersionTool> tool;

  /// Last time the tool version was created or modified.
  /// Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String> updateTime;

  CxToolVersion(
    String name, {
    CxToolVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxToolVersion:CxToolVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.tool = registerOutput<CxToolVersionTool>('tool');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
