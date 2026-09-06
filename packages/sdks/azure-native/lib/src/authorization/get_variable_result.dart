// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_variable_column_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVariable.
class GetVariableResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Variable column definitions.
  final List<PolicyVariableColumnResponse>? columns;
  /// The ID of the variable.
  final String? id;
  /// The name of the variable.
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource (Microsoft.Authorization/variables).
  final String? type;

  /// Creates a new [GetVariableResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [columns] Variable column definitions.
  /// [id] The ID of the variable.
  /// [name] The name of the variable.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource (Microsoft.Authorization/variables).
  const GetVariableResult({
    this.azureApiVersion,
    this.columns,
    this.id,
    this.name,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'columns': ?(() { final guardedValue = columns; if (guardedValue == null) return null; return pulumi.Input.encodeList<PolicyVariableColumnResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetVariableResult.fromMap(Map<String, dynamic> map) {
    return GetVariableResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyVariableColumnResponse>(guardedValue, (value) => PolicyVariableColumnResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
