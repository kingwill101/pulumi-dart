// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mission_get_enclave_endpoint_args_doc}
/// Arguments for getEnclaveEndpoint.
/// {@endtemplate}
/// {@macro pulumi_mission_get_enclave_endpoint_args_doc}
class GetEnclaveEndpointArgs {
  /// The name of the Enclave Endpoint Resource
  final pulumi.Input<String> enclaveEndpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the enclaveResource Resource
  final pulumi.Input<String> virtualEnclaveName;

  /// Creates a new [GetEnclaveEndpointArgs].
  /// [enclaveEndpointName] The name of the Enclave Endpoint Resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualEnclaveName] The name of the enclaveResource Resource
  GetEnclaveEndpointArgs({
    required this.enclaveEndpointName,
    required this.resourceGroupName,
    required this.virtualEnclaveName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enclaveEndpointName': enclaveEndpointName,
      'resourceGroupName': resourceGroupName,
      'virtualEnclaveName': virtualEnclaveName,
    };
  }

  factory GetEnclaveEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetEnclaveEndpointArgs(
      enclaveEndpointName: pulumi.Input.fromValue(map['enclaveEndpointName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualEnclaveName: pulumi.Input.fromValue(map['virtualEnclaveName'] as String),
    );
  }
}

