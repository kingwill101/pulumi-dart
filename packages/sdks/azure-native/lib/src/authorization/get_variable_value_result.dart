// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_variable_value_column_value_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVariableValue.
class GetVariableValueResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ID of the variable.
  final String? id;
  /// The name of the variable.
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource (Microsoft.Authorization/variables/values).
  final String? type;
  /// Variable value column value array.
  final List<PolicyVariableValueColumnValueResponse>? values;

  /// Creates a new [GetVariableValueResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ID of the variable.
  /// [name] The name of the variable.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource (Microsoft.Authorization/variables/values).
  /// [values] Variable value column value array.
  const GetVariableValueResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.systemData,
    this.type,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'values': ?(() { final guardedValue = values; if (guardedValue == null) return null; return pulumi.Input.encodeList<PolicyVariableValueColumnValueResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVariableValueResult.fromMap(Map<String, dynamic> map) {
    return GetVariableValueResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyVariableValueColumnValueResponse>(guardedValue, (value) => PolicyVariableValueColumnValueResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
