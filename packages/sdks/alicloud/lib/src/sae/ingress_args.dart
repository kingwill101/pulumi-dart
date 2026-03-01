// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_default_rule.dart';
import 'ingress_rule.dart';

/// {@template pulumi_sae_ingress_ingress_args_doc}
/// The set of arguments for Ingress.
/// {@endtemplate}
/// {@macro pulumi_sae_ingress_ingress_args_doc}
class IngressArgs {
  /// The certificate ID of the HTTPS listener. The `cert_id` takes effect only when `load_balance_type` is set to `clb`.
  final pulumi.Input<String>? certId;
  /// The certificate IDs of the HTTPS listener, and multiple certificate IDs are separated by commas. The `cert_ids` takes effect only when `load_balance_type` is set to `alb`.
  final pulumi.Input<String>? certIds;
  /// Default Rule. See `default_rule` below.
  final pulumi.Input<IngressDefaultRule>? defaultRule;
  /// Description.
  final pulumi.Input<String>? description;
  /// SLB listening port.
  final pulumi.Input<int> listenerPort;
  /// The protocol that is used to forward requests. Default value: `HTTP`. Valid values: `HTTP`, `HTTPS`.
  final pulumi.Input<String>? listenerProtocol;
  /// The type of the SLB instance. Default value: `clb`. Valid values: `clb`, `alb`.
  final pulumi.Input<String>? loadBalanceType;
  /// The ID of Namespace. It can contain 2 to 32 lowercase characters.The value is in format `{RegionId}:{namespace}`.
  final pulumi.Input<String> namespaceId;
  /// Forwarding rules. Forward traffic to the specified application according to the domain name and path. See `rules` below.
  final pulumi.Input<List<IngressRule>> rules;
  /// SLB ID.
  final pulumi.Input<String> slbId;

  /// Creates a new [IngressArgs].
  /// [certId] The certificate ID of the HTTPS listener. The `cert_id` takes effect only when `load_balance_type` is set to `clb`.
  /// [certIds] The certificate IDs of the HTTPS listener, and multiple certificate IDs are separated by commas. The `cert_ids` takes effect only when `load_balance_type` is set to `alb`.
  /// [defaultRule] Default Rule. See `default_rule` below.
  /// [description] Description.
  /// [listenerPort] SLB listening port.
  /// [listenerProtocol] The protocol that is used to forward requests. Default value: `HTTP`. Valid values: `HTTP`, `HTTPS`.
  /// [loadBalanceType] The type of the SLB instance. Default value: `clb`. Valid values: `clb`, `alb`.
  /// [namespaceId] The ID of Namespace. It can contain 2 to 32 lowercase characters.The value is in format `{RegionId}:{namespace}`.
  /// [rules] Forwarding rules. Forward traffic to the specified application according to the domain name and path. See `rules` below.
  /// [slbId] SLB ID.
  IngressArgs({
    pulumi.Output<String>? certId,
    pulumi.Output<String>? certIds,
    pulumi.Output<IngressDefaultRule>? defaultRule,
    pulumi.Output<String>? description,
    required pulumi.Output<int> listenerPort,
    pulumi.Output<String>? listenerProtocol,
    pulumi.Output<String>? loadBalanceType,
    required pulumi.Output<String> namespaceId,
    required pulumi.Output<List<IngressRule>> rules,
    required pulumi.Output<String> slbId,
  }) :
      certId = pulumi.Input.asOptionalInput<String>(certId),
      certIds = pulumi.Input.asOptionalInput<String>(certIds),
      defaultRule = pulumi.Input.asOptionalInput<IngressDefaultRule>(defaultRule),
      description = pulumi.Input.asOptionalInput<String>(description),
      listenerPort = pulumi.Input.asInput<int>(listenerPort),
      listenerProtocol = pulumi.Input.asOptionalInput<String>(listenerProtocol),
      loadBalanceType = pulumi.Input.asOptionalInput<String>(loadBalanceType),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      rules = pulumi.Input.asInput<List<IngressRule>>(rules),
      slbId = pulumi.Input.asInput<String>(slbId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': ?certId,
      'certIds': ?certIds,
      'defaultRule': ?pulumi.Input.mapOptionalInputValue<IngressDefaultRule, Map<String, dynamic>>(defaultRule, (value) => value.toMap()),
      'description': ?description,
      'listenerPort': listenerPort,
      'listenerProtocol': ?listenerProtocol,
      'loadBalanceType': ?loadBalanceType,
      'namespaceId': namespaceId,
      'rules': pulumi.Input.mapInputValue<List<IngressRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<IngressRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slbId': slbId,
    };
  }

  factory IngressArgs.fromMap(Map<String, dynamic> map) {
    return IngressArgs(
      certId: map['certId'] == null ? null : pulumi.Output.create<String>(map['certId'] as String),
      certIds: map['certIds'] == null ? null : pulumi.Output.create<String>(map['certIds'] as String),
      defaultRule: map['defaultRule'] == null ? null : pulumi.Output.create<IngressDefaultRule>(IngressDefaultRule.fromMap((map['defaultRule'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      listenerPort: pulumi.Output.create<int>(map['listenerPort'] as int),
      listenerProtocol: map['listenerProtocol'] == null ? null : pulumi.Output.create<String>(map['listenerProtocol'] as String),
      loadBalanceType: map['loadBalanceType'] == null ? null : pulumi.Output.create<String>(map['loadBalanceType'] as String),
      namespaceId: pulumi.Output.create<String>(map['namespaceId'] as String),
      rules: pulumi.Output.create<List<IngressRule>>(pulumi.Input.decodeList<IngressRule>(map['rules'], (value) => IngressRule.fromMap((value as Map).cast<String, dynamic>()))),
      slbId: pulumi.Output.create<String>(map['slbId'] as String),
    );
  }
}

