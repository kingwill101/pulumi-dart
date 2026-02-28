// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_connector_spec.dart';
import 'cx_tool_data_store_spec.dart';
import 'cx_tool_function_spec.dart';
import 'cx_tool_open_api_spec.dart';

/// {@template pulumi_diagflow_cx_tool_cx_tool_args_doc}
/// The set of arguments for CxTool.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_tool_cx_tool_args_doc}
class CxToolArgs {
  /// Integration connectors tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolConnectorSpec>? connectorSpec;
  /// Data store search tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolDataStoreSpec>? dataStoreSpec;
  /// High level description of the Tool and its usage.
  final pulumi.Input<String> description;
  /// The human-readable name of the tool, unique within the agent.
  final pulumi.Input<String> displayName;
  /// Client side executed function specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolFunctionSpec>? functionSpec;
  /// OpenAPI specification of the Tool.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolOpenApiSpec>? openApiSpec;
  /// The agent to create a Tool for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;

  /// Creates a new [CxToolArgs].
  /// [connectorSpec] Integration connectors tool specification.
  /// [dataStoreSpec] Data store search tool specification.
  /// [description] High level description of the Tool and its usage.
  /// [displayName] The human-readable name of the tool, unique within the agent.
  /// [functionSpec] Client side executed function specification.
  /// [openApiSpec] OpenAPI specification of the Tool.
  /// [parent] The agent to create a Tool for.
  CxToolArgs({
    CxToolConnectorSpec? connectorSpec,
    CxToolDataStoreSpec? dataStoreSpec,
    required String description,
    required String displayName,
    CxToolFunctionSpec? functionSpec,
    CxToolOpenApiSpec? openApiSpec,
    String? parent,
  }) :
      connectorSpec = pulumi.Input.asOptionalInput<CxToolConnectorSpec>(connectorSpec),
      dataStoreSpec = pulumi.Input.asOptionalInput<CxToolDataStoreSpec>(dataStoreSpec),
      description = pulumi.Input.asInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      functionSpec = pulumi.Input.asOptionalInput<CxToolFunctionSpec>(functionSpec),
      openApiSpec = pulumi.Input.asOptionalInput<CxToolOpenApiSpec>(openApiSpec),
      parent = pulumi.Input.asOptionalInput<String>(parent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorSpec': ?pulumi.Input.mapOptionalInputValue<CxToolConnectorSpec, Map<String, dynamic>>(connectorSpec, (value) => value.toMap()),
      'dataStoreSpec': ?pulumi.Input.mapOptionalInputValue<CxToolDataStoreSpec, Map<String, dynamic>>(dataStoreSpec, (value) => value.toMap()),
      'description': description,
      'displayName': displayName,
      'functionSpec': ?pulumi.Input.mapOptionalInputValue<CxToolFunctionSpec, Map<String, dynamic>>(functionSpec, (value) => value.toMap()),
      'openApiSpec': ?pulumi.Input.mapOptionalInputValue<CxToolOpenApiSpec, Map<String, dynamic>>(openApiSpec, (value) => value.toMap()),
      'parent': ?parent,
    };
  }

  factory CxToolArgs.fromMap(Map<String, dynamic> map) {
    return CxToolArgs(
      connectorSpec: map['connectorSpec'] == null ? null : CxToolConnectorSpec.fromMap((map['connectorSpec'] as Map).cast<String, dynamic>()),
      dataStoreSpec: map['dataStoreSpec'] == null ? null : CxToolDataStoreSpec.fromMap((map['dataStoreSpec'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      functionSpec: map['functionSpec'] == null ? null : CxToolFunctionSpec.fromMap((map['functionSpec'] as Map).cast<String, dynamic>()),
      openApiSpec: map['openApiSpec'] == null ? null : CxToolOpenApiSpec.fromMap((map['openApiSpec'] as Map).cast<String, dynamic>()),
      parent: map['parent'] == null ? null : map['parent'] as String,
    );
  }
}

