// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../tool_client_function/tool_client_function.dart';
import '../tool_data_store_tool/tool_data_store_tool.dart';
import '../tool_google_search_tool/tool_google_search_tool.dart';
import '../tool_python_function/tool_python_function.dart';

/// The set of arguments for Tool.
class ToolArgs {
  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> app;

  /// Represents a client-side function that the agent can invoke. When the
  /// tool is chosen by the agent, control is handed off to the client.
  /// The client is responsible for executing the function and returning the result
  /// as a ToolResponse to continue the interaction with the agent.
  /// Structure is documented below.
  final Input<ToolClientFunction>? clientFunction;

  /// Tool to retrieve from Vertex AI Search datastore or engine for grounding.
  /// Accepts either a datastore or an engine, but not both.
  /// See Vertex AI Search:
  /// https://cloud.google.com/generative-ai-app-builder/docs/enterprise-search-introduction.
  /// Structure is documented below.
  final Input<ToolDataStoreTool>? dataStoreTool;

  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  final Input<String>? executionType;

  /// Represents a tool to perform Google web searches for grounding.
  /// See
  /// https://cloud.google.com/vertex-ai/generative-ai/docs/grounding/grounding-with-google-search.
  /// Structure is documented below.
  final Input<ToolGoogleSearchTool>? googleSearchTool;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A Python function tool.
  /// Structure is documented below.
  final Input<ToolPythonFunction>? pythonFunction;

  /// The ID to use for the tool, which will become the final component of
  /// the tool's resource name. If not provided, a unique ID will be
  /// automatically assigned for the tool.
  final Input<String> toolId;

  ToolArgs({
    required this.app,
    this.clientFunction,
    this.dataStoreTool,
    this.executionType,
    this.googleSearchTool,
    required this.location,
    this.project,
    this.pythonFunction,
    required this.toolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['app'] = app;
    final clientFunctionValue = clientFunction;
    if (clientFunctionValue != null) {
      map['clientFunction'] =
          Input.mapOptionalInputValue<ToolClientFunction, Map<String, dynamic>>(
              clientFunctionValue, (value) => value.toMap());
    }
    final dataStoreToolValue = dataStoreTool;
    if (dataStoreToolValue != null) {
      map['dataStoreTool'] =
          Input.mapOptionalInputValue<ToolDataStoreTool, Map<String, dynamic>>(
              dataStoreToolValue, (value) => value.toMap());
    }
    final executionTypeValue = executionType;
    if (executionTypeValue != null) {
      map['executionType'] = executionTypeValue;
    }
    final googleSearchToolValue = googleSearchTool;
    if (googleSearchToolValue != null) {
      map['googleSearchTool'] = Input.mapOptionalInputValue<
              ToolGoogleSearchTool, Map<String, dynamic>>(
          googleSearchToolValue, (value) => value.toMap());
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pythonFunctionValue = pythonFunction;
    if (pythonFunctionValue != null) {
      map['pythonFunction'] =
          Input.mapOptionalInputValue<ToolPythonFunction, Map<String, dynamic>>(
              pythonFunctionValue, (value) => value.toMap());
    }
    map['toolId'] = toolId;
    return map;
  }

  factory ToolArgs.fromMap(Map<String, dynamic> map) {
    return ToolArgs(
      app: Input.asInput<String>(map['app']),
      clientFunction:
          Input.asOptionalInput<ToolClientFunction>(map['clientFunction']),
      dataStoreTool:
          Input.asOptionalInput<ToolDataStoreTool>(map['dataStoreTool']),
      executionType: Input.asOptionalInput<String>(map['executionType']),
      googleSearchTool:
          Input.asOptionalInput<ToolGoogleSearchTool>(map['googleSearchTool']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      pythonFunction:
          Input.asOptionalInput<ToolPythonFunction>(map['pythonFunction']),
      toolId: Input.asInput<String>(map['toolId']),
    );
  }
}
