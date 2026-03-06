// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_default_rule.dart';
import 'ingress_rule.dart';

/// Input properties used for looking up and filtering Ingress resources.
class IngressState {
  /// The certificate ID of the HTTPS listener. The `cert_id` takes effect only when `load_balance_type` is set to `clb`.
  final pulumi.Input<String>? certId;
  /// The certificate IDs of the HTTPS listener, and multiple certificate IDs are separated by commas. The `cert_ids` takes effect only when `load_balance_type` is set to `alb`.
  final pulumi.Input<String>? certIds;
  /// Default Rule. See `default_rule` below.
  final pulumi.Input<IngressDefaultRule>? defaultRule;
  /// Description.
  final pulumi.Input<String>? description;
  /// SLB listening port.
  final pulumi.Input<int>? listenerPort;
  /// The protocol that is used to forward requests. Default value: `HTTP`. Valid values: `HTTP`, `HTTPS`.
  final pulumi.Input<String>? listenerProtocol;
  /// The type of the SLB instance. Default value: `clb`. Valid values: `clb`, `alb`.
  final pulumi.Input<String>? loadBalanceType;
  /// The ID of Namespace. It can contain 2 to 32 lowercase characters.The value is in format `{RegionId}:{namespace}`.
  final pulumi.Input<String>? namespaceId;
  /// Forwarding rules. Forward traffic to the specified application according to the domain name and path. See `rules` below.
  final pulumi.Input<List<IngressRule>>? rules;
  /// SLB ID.
  final pulumi.Input<String>? slbId;

  /// Creates a new [IngressState].
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
  const IngressState({
    this.certId,
    this.certIds,
    this.defaultRule,
    this.description,
    this.listenerPort,
    this.listenerProtocol,
    this.loadBalanceType,
    this.namespaceId,
    this.rules,
    this.slbId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': ?certId,
      'certIds': ?certIds,
      'defaultRule': ?pulumi.Input.mapOptionalInputValue<IngressDefaultRule, Map<String, dynamic>>(defaultRule, (value) => value.toMap()),
      'description': ?description,
      'listenerPort': ?listenerPort,
      'listenerProtocol': ?listenerProtocol,
      'loadBalanceType': ?loadBalanceType,
      'namespaceId': ?namespaceId,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<IngressRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<IngressRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'slbId': ?slbId,
    };
  }

  factory IngressState.fromMap(Map<String, dynamic> map) {
    return IngressState(
      certId: (() { final guardedValue = map['certId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certIds: (() { final guardedValue = map['certIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultRule: (() { final guardedValue = map['defaultRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressDefaultRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listenerPort: (() { final guardedValue = map['listenerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      listenerProtocol: (() { final guardedValue = map['listenerProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalanceType: (() { final guardedValue = map['loadBalanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IngressRule>(guardedValue, (value) => IngressRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      slbId: (() { final guardedValue = map['slbId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

