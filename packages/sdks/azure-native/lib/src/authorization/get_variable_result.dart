// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_variable_column_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVariable.
class GetVariableResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Variable column definitions.
  final List<PolicyVariableColumnResponse> columns;
  /// The ID of the variable.
  final String id;
  /// The name of the variable.
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource (Microsoft.Authorization/variables).
  final String type;

  /// Creates a new [GetVariableResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [columns] Variable column definitions.
  /// [id] The ID of the variable.
  /// [name] The name of the variable.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource (Microsoft.Authorization/variables).
  GetVariableResult({
    required this.azureApiVersion,
    required this.columns,
    required this.id,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'columns': pulumi.Input.encodeList<PolicyVariableColumnResponse, Map<String, dynamic>>(columns, (value) => value.toMap()),
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetVariableResult.fromMap(Map<String, dynamic> map) {
    return GetVariableResult(
      azureApiVersion: map['azureApiVersion'] as String,
      columns: pulumi.Input.decodeList<PolicyVariableColumnResponse>(map['columns'], (value) => PolicyVariableColumnResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

