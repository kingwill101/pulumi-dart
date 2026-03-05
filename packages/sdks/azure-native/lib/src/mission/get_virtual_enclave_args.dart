// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mission_get_virtual_enclave_args_doc}
/// Arguments for getVirtualEnclave.
/// {@endtemplate}
/// {@macro pulumi_mission_get_virtual_enclave_args_doc}
class GetVirtualEnclaveArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the enclaveResource Resource
  final pulumi.Input<String> virtualEnclaveName;

  /// Creates a new [GetVirtualEnclaveArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualEnclaveName] The name of the enclaveResource Resource
  GetVirtualEnclaveArgs({
    required this.resourceGroupName,
    required this.virtualEnclaveName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualEnclaveName': virtualEnclaveName,
    };
  }

  factory GetVirtualEnclaveArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualEnclaveArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualEnclaveName: pulumi.Input.fromValue(map['virtualEnclaveName'] as String),
    );
  }
}

