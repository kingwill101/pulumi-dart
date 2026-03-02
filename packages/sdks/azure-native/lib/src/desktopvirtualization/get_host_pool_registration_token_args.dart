// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_host_pool_registration_token_args_doc}
/// Arguments for getHostPoolRegistrationToken.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_host_pool_registration_token_args_doc}
class GetHostPoolRegistrationTokenArgs {
  /// The name of the host pool within the specified resource group
  final pulumi.Input<String> hostPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHostPoolRegistrationTokenArgs].
  /// [hostPoolName] The name of the host pool within the specified resource group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetHostPoolRegistrationTokenArgs({
    required this.hostPoolName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPoolName': hostPoolName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHostPoolRegistrationTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetHostPoolRegistrationTokenArgs(
      hostPoolName: (map['hostPoolName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

