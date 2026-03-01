// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_programmableconnectivity_get_operator_api_connection_args_doc}
/// Arguments for getOperatorApiConnection.
/// {@endtemplate}
/// {@macro pulumi_programmableconnectivity_get_operator_api_connection_args_doc}
class GetOperatorApiConnectionArgs {
  /// Azure Programmable Connectivity (APC) Operator API Connection Name.
  final pulumi.Input<String> operatorApiConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOperatorApiConnectionArgs].
  /// [operatorApiConnectionName] Azure Programmable Connectivity (APC) Operator API Connection Name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOperatorApiConnectionArgs({
    required String operatorApiConnectionName,
    required String resourceGroupName,
  }) :
      operatorApiConnectionName = pulumi.Input.asInput<String>(operatorApiConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatorApiConnectionName': operatorApiConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOperatorApiConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetOperatorApiConnectionArgs(
      operatorApiConnectionName: map['operatorApiConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

