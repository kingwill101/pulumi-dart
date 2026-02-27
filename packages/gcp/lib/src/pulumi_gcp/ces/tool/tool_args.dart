// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../tool_client_function/tool_client_function.dart';
import '../tool_data_store_tool/tool_data_store_tool.dart';
import '../tool_google_search_tool/tool_google_search_tool.dart';
import '../tool_python_function/tool_python_function.dart';

/// The set of arguments for Tool.
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
      map['clientFunction'] = pulumi.Input.mapOptionalInputValue<
          ToolClientFunction,
          Map<String, dynamic>>(clientFunctionValue, (value) => value.toMap());
    }
    final dataStoreToolValue = dataStoreTool;
    if (dataStoreToolValue != null) {
      map['dataStoreTool'] = pulumi.Input.mapOptionalInputValue<
          ToolDataStoreTool,
          Map<String, dynamic>>(dataStoreToolValue, (value) => value.toMap());
    }
    final executionTypeValue = executionType;
    if (executionTypeValue != null) {
      map['executionType'] = executionTypeValue;
    }
    final googleSearchToolValue = googleSearchTool;
    if (googleSearchToolValue != null) {
      map['googleSearchTool'] = pulumi.Input.mapOptionalInputValue<
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
      map['pythonFunction'] = pulumi.Input.mapOptionalInputValue<
          ToolPythonFunction,
          Map<String, dynamic>>(pythonFunctionValue, (value) => value.toMap());
    }
    map['toolId'] = toolId;
    return map;
  }

  factory ToolArgs.fromMap(Map<String, dynamic> map) {
    return ToolArgs(
      app: pulumi.Input.asInput<String>(map['app']),
      clientFunction: pulumi.Input.asOptionalInput<ToolClientFunction>(
          map['clientFunction']),
      dataStoreTool:
          pulumi.Input.asOptionalInput<ToolDataStoreTool>(map['dataStoreTool']),
      executionType: pulumi.Input.asOptionalInput<String>(map['executionType']),
      googleSearchTool: pulumi.Input.asOptionalInput<ToolGoogleSearchTool>(
          map['googleSearchTool']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pythonFunction: pulumi.Input.asOptionalInput<ToolPythonFunction>(
          map['pythonFunction']),
      toolId: pulumi.Input.asInput<String>(map['toolId']),
    );
  }
}
