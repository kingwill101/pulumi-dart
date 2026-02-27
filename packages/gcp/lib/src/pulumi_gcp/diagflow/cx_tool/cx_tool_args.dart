// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_tool_connector_spec/cx_tool_connector_spec.dart';
import '../cx_tool_data_store_spec/cx_tool_data_store_spec.dart';
import '../cx_tool_function_spec/cx_tool_function_spec.dart';
import '../cx_tool_open_api_spec/cx_tool_open_api_spec.dart';

/// The set of arguments for CxTool.
class CxToolArgs {
  /// Integration connectors tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  final Input<CxToolConnectorSpec>? connectorSpec;

  /// Data store search tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final Input<CxToolDataStoreSpec>? dataStoreSpec;

  /// High level description of the Tool and its usage.
  final Input<String> description;

  /// The human-readable name of the tool, unique within the agent.
  final Input<String> displayName;

  /// Client side executed function specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final Input<CxToolFunctionSpec>? functionSpec;

  /// OpenAPI specification of the Tool.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final Input<CxToolOpenApiSpec>? openApiSpec;

  /// The agent to create a Tool for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final Input<String>? parent;

  CxToolArgs({
    this.connectorSpec,
    this.dataStoreSpec,
    required this.description,
    required this.displayName,
    this.functionSpec,
    this.openApiSpec,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectorSpecValue = connectorSpec;
    if (connectorSpecValue != null) {
      map['connectorSpec'] = Input.mapOptionalInputValue<CxToolConnectorSpec,
          Map<String, dynamic>>(connectorSpecValue, (value) => value.toMap());
    }
    final dataStoreSpecValue = dataStoreSpec;
    if (dataStoreSpecValue != null) {
      map['dataStoreSpec'] = Input.mapOptionalInputValue<CxToolDataStoreSpec,
          Map<String, dynamic>>(dataStoreSpecValue, (value) => value.toMap());
    }
    map['description'] = description;
    map['displayName'] = displayName;
    final functionSpecValue = functionSpec;
    if (functionSpecValue != null) {
      map['functionSpec'] =
          Input.mapOptionalInputValue<CxToolFunctionSpec, Map<String, dynamic>>(
              functionSpecValue, (value) => value.toMap());
    }
    final openApiSpecValue = openApiSpec;
    if (openApiSpecValue != null) {
      map['openApiSpec'] =
          Input.mapOptionalInputValue<CxToolOpenApiSpec, Map<String, dynamic>>(
              openApiSpecValue, (value) => value.toMap());
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    return map;
  }

  factory CxToolArgs.fromMap(Map<String, dynamic> map) {
    return CxToolArgs(
      connectorSpec:
          Input.asOptionalInput<CxToolConnectorSpec>(map['connectorSpec']),
      dataStoreSpec:
          Input.asOptionalInput<CxToolDataStoreSpec>(map['dataStoreSpec']),
      description: Input.asInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      functionSpec:
          Input.asOptionalInput<CxToolFunctionSpec>(map['functionSpec']),
      openApiSpec: Input.asOptionalInput<CxToolOpenApiSpec>(map['openApiSpec']),
      parent: Input.asOptionalInput<String>(map['parent']),
    );
  }
}
