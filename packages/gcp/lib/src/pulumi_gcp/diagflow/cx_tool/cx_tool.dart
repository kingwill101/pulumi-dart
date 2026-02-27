import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_tool_connector_spec/cx_tool_connector_spec.dart';
import '../cx_tool_data_store_spec/cx_tool_data_store_spec.dart';
import '../cx_tool_function_spec/cx_tool_function_spec.dart';
import '../cx_tool_open_api_spec/cx_tool_open_api_spec.dart';
import 'cx_tool_args.dart';

/// A tool provides a list of actions which are available to the Playbook to attain its goal.
/// A Tool consists of a description of the tool's usage and a specification of the tool which contains the schema and authentication information.
///
///
/// To get more information about Tool, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
///
///
/// ## Example Usage
///
/// ### Dialogflowcx Tool Open Api
///
///
///
/// ### Dialogflowcx Tool Data Store
///
///
///
/// ### Dialogflowcx Tool Function
///
///
///
/// ### Dialogflowcx Tool Connector
///
///
///
///
/// ## Import
///
/// Tool can be imported using any of these accepted formats:
///
/// * `{{parent}}/tools/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Tool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxTool:CxTool default {{parent}}/tools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxTool:CxTool default {{parent}}/{{name}}
/// ```
class CxTool extends pulumi.CustomResource {
  /// Integration connectors tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  late final pulumi.Output<CxToolConnectorSpec?> connectorSpec;

  /// Data store search tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  late final pulumi.Output<CxToolDataStoreSpec?> dataStoreSpec;

  /// High level description of the Tool and its usage.
  late final pulumi.Output<String> description;

  /// The human-readable name of the tool, unique within the agent.
  late final pulumi.Output<String> displayName;

  /// Client side executed function specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  late final pulumi.Output<CxToolFunctionSpec?> functionSpec;

  /// The unique identifier of the Tool.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/tools/<Tool ID>.
  late final pulumi.Output<String> name;

  /// OpenAPI specification of the Tool.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  late final pulumi.Output<CxToolOpenApiSpec?> openApiSpec;

  /// The agent to create a Tool for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final pulumi.Output<String?> parent;

  /// The tool type.
  late final pulumi.Output<String> toolType;

  CxTool(
    String name, {
    CxToolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxTool:CxTool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectorSpec = registerOutput<CxToolConnectorSpec?>('connectorSpec');
    this.dataStoreSpec = registerOutput<CxToolDataStoreSpec?>('dataStoreSpec');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.functionSpec = registerOutput<CxToolFunctionSpec?>('functionSpec');
    this.name = registerOutput<String>('name');
    this.openApiSpec = registerOutput<CxToolOpenApiSpec?>('openApiSpec');
    this.parent = registerOutput<String?>('parent');
    this.toolType = registerOutput<String>('toolType');
  }
}
