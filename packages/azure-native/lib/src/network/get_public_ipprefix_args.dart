// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_public_ipprefix_args_doc}
/// Arguments for getPublicIPPrefix.
/// {@endtemplate}
/// {@macro pulumi_network_get_public_ipprefix_args_doc}
class GetPublicIPPrefixArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the public IP prefix.
  final pulumi.Input<String> publicIpPrefixName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPublicIPPrefixArgs].
  /// [expand] Expands referenced resources.
  /// [publicIpPrefixName] The name of the public IP prefix.
  /// [resourceGroupName] The name of the resource group.
  GetPublicIPPrefixArgs({
    String? expand,
    required String publicIpPrefixName,
    required String resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      publicIpPrefixName = pulumi.Input.asInput<String>(publicIpPrefixName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'publicIpPrefixName': publicIpPrefixName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPublicIPPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIPPrefixArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      publicIpPrefixName: map['publicIpPrefixName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

