// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_client_function.dart';
import 'tool_data_store_tool.dart';
import 'tool_google_search_tool.dart';
import 'tool_python_function.dart';

/// {@template pulumi_ces_tool_tool_args_doc}
/// The set of arguments for Tool.
/// {@endtemplate}
/// {@macro pulumi_ces_tool_tool_args_doc}
class ToolArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;

  /// Represents a client-side function that the agent can invoke. When the
  /// tool is chosen by the agent, control is handed off to the client.
  /// The client is responsible for executing the function and returning the result
  /// as a ToolResponse to continue the interaction with the agent.
  /// Structure is documented below.
  final pulumi.Input<ToolClientFunction>? clientFunction;

  /// Tool to retrieve from Vertex AI Search datastore or engine for grounding.
  /// Accepts either a datastore or an engine, but not both.
  /// See Vertex AI Search:
  /// https://cloud.google.com/generative-ai-app-builder/docs/enterprise-search-introduction.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreTool>? dataStoreTool;

  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  final pulumi.Input<String>? executionType;

  /// Represents a tool to perform Google web searches for grounding.
  /// See
  /// https://cloud.google.com/vertex-ai/generative-ai/docs/grounding/grounding-with-google-search.
  /// Structure is documented below.
  final pulumi.Input<ToolGoogleSearchTool>? googleSearchTool;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A Python function tool.
  /// Structure is documented below.
  final pulumi.Input<ToolPythonFunction>? pythonFunction;

  /// The ID to use for the tool, which will become the final component of
  /// the tool's resource name. If not provided, a unique ID will be
  /// automatically assigned for the tool.
  final pulumi.Input<String> toolId;

  /// Creates a new [ToolArgs].
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [clientFunction] Represents a client-side function that the agent can invoke. When the
  /// [dataStoreTool] Tool to retrieve from Vertex AI Search datastore or engine for grounding.
  /// [executionType] Possible values:
  /// [googleSearchTool] Represents a tool to perform Google web searches for grounding.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [pythonFunction] A Python function tool.
  /// [toolId] The ID to use for the tool, which will become the final component of
  ToolArgs({
    required String app,
    ToolClientFunction? clientFunction,
    ToolDataStoreTool? dataStoreTool,
    String? executionType,
    ToolGoogleSearchTool? googleSearchTool,
    required String location,
    String? project,
    ToolPythonFunction? pythonFunction,
    required String toolId,
  }) : app = pulumi.Input.asInput<String>(app),
       clientFunction = pulumi.Input.asOptionalInput<ToolClientFunction>(
         clientFunction,
       ),
       dataStoreTool = pulumi.Input.asOptionalInput<ToolDataStoreTool>(
         dataStoreTool,
       ),
       executionType = pulumi.Input.asOptionalInput<String>(executionType),
       googleSearchTool = pulumi.Input.asOptionalInput<ToolGoogleSearchTool>(
         googleSearchTool,
       ),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       pythonFunction = pulumi.Input.asOptionalInput<ToolPythonFunction>(
         pythonFunction,
       ),
       toolId = pulumi.Input.asInput<String>(toolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': app,
      'clientFunction':
          ?pulumi.Input.mapOptionalInputValue<
            ToolClientFunction,
            Map<String, dynamic>
          >(clientFunction, (value) => value.toMap()),
      'dataStoreTool':
          ?pulumi.Input.mapOptionalInputValue<
            ToolDataStoreTool,
            Map<String, dynamic>
          >(dataStoreTool, (value) => value.toMap()),
      'executionType': ?executionType,
      'googleSearchTool':
          ?pulumi.Input.mapOptionalInputValue<
            ToolGoogleSearchTool,
            Map<String, dynamic>
          >(googleSearchTool, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'pythonFunction':
          ?pulumi.Input.mapOptionalInputValue<
            ToolPythonFunction,
            Map<String, dynamic>
          >(pythonFunction, (value) => value.toMap()),
      'toolId': toolId,
    };
  }

  factory ToolArgs.fromMap(Map<String, dynamic> map) {
    return ToolArgs(
      app: map['app'] as String,
      clientFunction: map['clientFunction'] == null
          ? null
          : ToolClientFunction.fromMap(
              (map['clientFunction'] as Map).cast<String, dynamic>(),
            ),
      dataStoreTool: map['dataStoreTool'] == null
          ? null
          : ToolDataStoreTool.fromMap(
              (map['dataStoreTool'] as Map).cast<String, dynamic>(),
            ),
      executionType: map['executionType'] == null
          ? null
          : map['executionType'] as String,
      googleSearchTool: map['googleSearchTool'] == null
          ? null
          : ToolGoogleSearchTool.fromMap(
              (map['googleSearchTool'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pythonFunction: map['pythonFunction'] == null
          ? null
          : ToolPythonFunction.fromMap(
              (map['pythonFunction'] as Map).cast<String, dynamic>(),
            ),
      toolId: map['toolId'] as String,
    );
  }
}
