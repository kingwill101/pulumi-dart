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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? ipv6EgressRuleName,
    required pulumi.Output<String> ipv6GatewayId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      ipv6EgressRuleName = pulumi.Input.asOptionalInput<String>(ipv6EgressRuleName),
      ipv6GatewayId = pulumi.Input.asInput<String>(ipv6GatewayId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      ipv6EgressRuleName: map['ipv6EgressRuleName'] == null ? null : pulumi.Output.create<String>(map['ipv6EgressRuleName'] as String),
      ipv6GatewayId: pulumi.Output.create<String>(map['ipv6GatewayId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

