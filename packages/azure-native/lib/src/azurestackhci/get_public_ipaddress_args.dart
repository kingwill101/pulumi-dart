// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_public_ipaddress_args_doc}
/// Arguments for getPublicIPAddress.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_public_ipaddress_args_doc}
class GetPublicIPAddressArgs {
  /// Name of the public IP
  final pulumi.Input<String> publicIPAddressName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPublicIPAddressArgs].
  /// [publicIPAddressName] Name of the public IP
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPublicIPAddressArgs({
    required String publicIPAddressName,
    required String resourceGroupName,
  }) :
      publicIPAddressName = pulumi.Input.asInput<String>(publicIPAddressName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPAddressName': publicIPAddressName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPublicIPAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIPAddressArgs(
      publicIPAddressName: map['publicIPAddressName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

