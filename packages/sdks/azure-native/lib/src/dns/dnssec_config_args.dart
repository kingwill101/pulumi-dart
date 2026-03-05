// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_dnssec_config_args_doc}
/// The set of arguments for DnssecConfig.
/// {@endtemplate}
/// {@macro pulumi_dns_dnssec_config_args_doc}
class DnssecConfigArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the DNS zone (without a terminating dot).
  final pulumi.Input<String> zoneName;

  /// Creates a new [DnssecConfigArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [zoneName] The name of the DNS zone (without a terminating dot).
  DnssecConfigArgs({
    required this.resourceGroupName,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'zoneName': zoneName,
    };
  }

  factory DnssecConfigArgs.fromMap(Map<String, dynamic> map) {
    return DnssecConfigArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}

