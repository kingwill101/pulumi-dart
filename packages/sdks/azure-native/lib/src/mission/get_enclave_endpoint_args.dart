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
    required pulumi.Output<String> enclaveEndpointName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualEnclaveName,
  }) :
      enclaveEndpointName = pulumi.Input.asInput<String>(enclaveEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualEnclaveName = pulumi.Input.asInput<String>(virtualEnclaveName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enclaveEndpointName': enclaveEndpointName,
      'resourceGroupName': resourceGroupName,
      'virtualEnclaveName': virtualEnclaveName,
    };
  }

  factory GetEnclaveEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetEnclaveEndpointArgs(
      enclaveEndpointName: pulumi.Output.create<String>(map['enclaveEndpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualEnclaveName: pulumi.Output.create<String>(map['virtualEnclaveName'] as String),
    );
  }
}

