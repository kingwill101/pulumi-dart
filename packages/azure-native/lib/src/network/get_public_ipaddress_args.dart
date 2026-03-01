// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_public_ipaddress_args_doc}
/// Arguments for getPublicIPAddress.
/// {@endtemplate}
/// {@macro pulumi_network_get_public_ipaddress_args_doc}
class GetPublicIPAddressArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the public IP address.
  final pulumi.Input<String> publicIpAddressName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPublicIPAddressArgs].
  /// [expand] Expands referenced resources.
  /// [publicIpAddressName] The name of the public IP address.
  /// [resourceGroupName] The name of the resource group.
  GetPublicIPAddressArgs({
    String? expand,
    required String publicIpAddressName,
    required String resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      publicIpAddressName = pulumi.Input.asInput<String>(publicIpAddressName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'publicIpAddressName': publicIpAddressName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPublicIPAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIPAddressArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      publicIpAddressName: map['publicIpAddressName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

