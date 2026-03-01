// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_security_group_rules_get_security_group_rules_args_doc}
/// Arguments for getSecurityGroupRules.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_security_group_rules_get_security_group_rules_args_doc}
class GetSecurityGroupRulesArgs {
  /// Authorization direction. Valid values are: `ingress` or `egress`.
  final pulumi.Input<String>? direction;
  /// The ID of the security group that owns the rules.
  final pulumi.Input<String> groupId;
  /// The IP protocol. Valid values are: `tcp`, `udp`, `icmp`, `gre` and `all`.
  final pulumi.Input<String>? ipProtocol;
  /// Refers to the network type. Can be either `internet` or `intranet`. The default value is `internet`.
  final pulumi.Input<String>? nicType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Authorization policy. Can be either `accept` or `drop`. The default value is `accept`.
  final pulumi.Input<String>? policy;

  /// Creates a new [GetSecurityGroupRulesArgs].
  /// [direction] Authorization direction. Valid values are: `ingress` or `egress`.
  /// [groupId] The ID of the security group that owns the rules.
  /// [ipProtocol] The IP protocol. Valid values are: `tcp`, `udp`, `icmp`, `gre` and `all`.
  /// [nicType] Refers to the network type. Can be either `internet` or `intranet`. The default value is `internet`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [policy] Authorization policy. Can be either `accept` or `drop`. The default value is `accept`.
  GetSecurityGroupRulesArgs({
    pulumi.Output<String>? direction,
    required pulumi.Output<String> groupId,
    pulumi.Output<String>? ipProtocol,
    pulumi.Output<String>? nicType,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? policy,
  }) :
      direction = pulumi.Input.asOptionalInput<String>(direction),
      groupId = pulumi.Input.asInput<String>(groupId),
      ipProtocol = pulumi.Input.asOptionalInput<String>(ipProtocol),
      nicType = pulumi.Input.asOptionalInput<String>(nicType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      policy = pulumi.Input.asOptionalInput<String>(policy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'groupId': groupId,
      'ipProtocol': ?ipProtocol,
      'nicType': ?nicType,
      'outputFile': ?outputFile,
      'policy': ?policy,
    };
  }

  factory GetSecurityGroupRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRulesArgs(
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<String>(map['ipProtocol'] as String),
      nicType: map['nicType'] == null ? null : pulumi.Output.create<String>(map['nicType'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
    );
  }
}

