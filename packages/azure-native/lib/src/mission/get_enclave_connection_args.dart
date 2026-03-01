// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mission_get_enclave_connection_args_doc}
/// Arguments for getEnclaveConnection.
/// {@endtemplate}
/// {@macro pulumi_mission_get_enclave_connection_args_doc}
class GetEnclaveConnectionArgs {
  /// The name of the Enclave Connection Resource
  final pulumi.Input<String> enclaveConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEnclaveConnectionArgs].
  /// [enclaveConnectionName] The name of the Enclave Connection Resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEnclaveConnectionArgs({
    required String enclaveConnectionName,
    required String resourceGroupName,
  }) :
      enclaveConnectionName = pulumi.Input.asInput<String>(enclaveConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enclaveConnectionName': enclaveConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEnclaveConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetEnclaveConnectionArgs(
      enclaveConnectionName: map['enclaveConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

