// ignore_for_file: unused_element, unnecessary_cast

import 'cx_tool_version_tool_connector_spec.dart';
import 'cx_tool_version_tool_data_store_spec.dart';
import 'cx_tool_version_tool_function_spec.dart';
import 'cx_tool_version_tool_open_api_spec.dart';

class CxToolVersionTool {
  /// Integration connectors tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  final CxToolVersionToolConnectorSpec? connectorSpec;

  /// Data store search tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final CxToolVersionToolDataStoreSpec? dataStoreSpec;

  /// High level description of the Tool and its usage.
  final String description;

  /// The human-readable name of the tool, unique within the agent.
  final String displayName;

  /// Client side executed function specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final CxToolVersionToolFunctionSpec? functionSpec;

  /// (Output)
  /// The unique identifier of the Tool.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/tools/<Tool ID>.
  final String? name;

  /// OpenAPI specification of the Tool.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final CxToolVersionToolOpenApiSpec? openApiSpec;

  /// (Output)
  /// The tool type.
  final String? toolType;

  /// Creates a new [CxToolVersionTool].
  /// [connectorSpec] Integration connectors tool specification.
  /// [dataStoreSpec] Data store search tool specification.
  /// [description] High level description of the Tool and its usage.
  /// [displayName] The human-readable name of the tool, unique within the agent.
  /// [functionSpec] Client side executed function specification.
  /// [name] (Output)
  /// [openApiSpec] OpenAPI specification of the Tool.
  /// [toolType] (Output)
  CxToolVersionTool({
    this.connectorSpec,
    this.dataStoreSpec,
    required this.description,
    required this.displayName,
    this.functionSpec,
    this.name,
    this.openApiSpec,
    this.toolType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectorSpecValue = connectorSpec;
    if (connectorSpecValue != null) {
      map['connectorSpec'] = connectorSpecValue.toMap();
    }
    final dataStoreSpecValue = dataStoreSpec;
    if (dataStoreSpecValue != null) {
      map['dataStoreSpec'] = dataStoreSpecValue.toMap();
    }
    map['description'] = description;
    map['displayName'] = displayName;
    final functionSpecValue = functionSpec;
    if (functionSpecValue != null) {
      map['functionSpec'] = functionSpecValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final openApiSpecValue = openApiSpec;
    if (openApiSpecValue != null) {
      map['openApiSpec'] = openApiSpecValue.toMap();
    }
    final toolTypeValue = toolType;
    if (toolTypeValue != null) {
      map['toolType'] = toolTypeValue;
    }
    return map;
  }

  factory CxToolVersionTool.fromMap(Map<String, dynamic> map) {
    return CxToolVersionTool(
      connectorSpec: map['connectorSpec'] == null
          ? null
          : CxToolVersionToolConnectorSpec.fromMap(
              (map['connectorSpec'] as Map).cast<String, dynamic>()),
      dataStoreSpec: map['dataStoreSpec'] == null
          ? null
          : CxToolVersionToolDataStoreSpec.fromMap(
              (map['dataStoreSpec'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      functionSpec: map['functionSpec'] == null
          ? null
          : CxToolVersionToolFunctionSpec.fromMap(
              (map['functionSpec'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      openApiSpec: map['openApiSpec'] == null
          ? null
          : CxToolVersionToolOpenApiSpec.fromMap(
              (map['openApiSpec'] as Map).cast<String, dynamic>()),
      toolType: map['toolType'] == null ? null : map['toolType'] as String,
    );
  }
}
