// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ipv6_egress_rules_get_ipv6_egress_rules_args_doc}
/// Arguments for getIpv6EgressRules.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ipv6_egress_rules_get_ipv6_egress_rules_args_doc}
class GetIpv6EgressRulesArgs {
  /// A list of Ipv6 Egress Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the instance that is associated with the IPv6 address to which the egress-only rule is applied.
  final pulumi.Input<String>? instanceId;
  /// The name of the resource.
  final pulumi.Input<String>? ipv6EgressRuleName;
  /// The ID of the IPv6 gateway.
  final pulumi.Input<String> ipv6GatewayId;
  /// A regex string to filter results by Ipv6 Egress Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `Available`, `Deleting`, `Pending`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetIpv6EgressRulesArgs].
  /// [ids] A list of Ipv6 Egress Rule IDs.
  /// [instanceId] The ID of the instance that is associated with the IPv6 address to which the egress-only rule is applied.
  /// [ipv6EgressRuleName] The name of the resource.
  /// [ipv6GatewayId] The ID of the IPv6 gateway.
  /// [nameRegex] A regex string to filter results by Ipv6 Egress Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `Available`, `Deleting`, `Pending`.
  GetIpv6EgressRulesArgs({
    this.ids,
    this.instanceId,
    this.ipv6EgressRuleName,
    required this.ipv6GatewayId,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': ?instanceId,
      'ipv6EgressRuleName': ?ipv6EgressRuleName,
      'ipv6GatewayId': ipv6GatewayId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetIpv6EgressRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetIpv6EgressRulesArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      ipv6EgressRuleName: map['ipv6EgressRuleName'] == null ? null : (map['ipv6EgressRuleName']! as String).input(),
      ipv6GatewayId: (map['ipv6GatewayId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

