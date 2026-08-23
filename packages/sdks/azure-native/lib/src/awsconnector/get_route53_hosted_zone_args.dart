// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_route53_hosted_zone_args_doc}
/// Arguments for getRoute53HostedZone.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_route53_hosted_zone_args_doc}
class GetRoute53HostedZoneArgs {
  /// Name of Route53HostedZone
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRoute53HostedZoneArgs].
  /// [name] Name of Route53HostedZone
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetRoute53HostedZoneArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRoute53HostedZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetRoute53HostedZoneArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
