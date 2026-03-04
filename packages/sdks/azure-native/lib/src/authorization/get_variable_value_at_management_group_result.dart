// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_variable_value_column_value_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVariableValueAtManagementGroup.
class GetVariableValueAtManagementGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The ID of the variable.
  final String id;

  /// The name of the variable.
  final String name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource (Microsoft.Authorization/variables/values).
  final String type;

  /// Variable value column value array.
  final List<PolicyVariableValueColumnValueResponse> values;

  /// Creates a new [GetVariableValueAtManagementGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ID of the variable.
  /// [name] The name of the variable.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource (Microsoft.Authorization/variables/values).
  /// [values] Variable value column value array.
  GetVariableValueAtManagementGroupResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.systemData,
    required this.type,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
      'values':
          pulumi.Input.encodeList<
            PolicyVariableValueColumnValueResponse,
            Map<String, dynamic>
          >(values, (value) => value.toMap()),
    };
  }

  factory GetVariableValueAtManagementGroupResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVariableValueAtManagementGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      values: pulumi.Input.decodeList<PolicyVariableValueColumnValueResponse>(
        map['values']!,
        (value) => PolicyVariableValueColumnValueResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
