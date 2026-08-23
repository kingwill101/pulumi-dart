// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_rewrite_rule_response.dart';

/// Rewrite rule set of an application gateway.
class ApplicationGatewayRewriteRuleSetResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the rewrite rule set that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// The provisioning state of the rewrite rule set resource.
  final pulumi.Input<String> provisioningState;
  /// Rewrite rules in the rewrite rule set.
  final pulumi.Input<List<ApplicationGatewayRewriteRuleResponse>>? rewriteRules;

  /// Creates a new [ApplicationGatewayRewriteRuleSetResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the rewrite rule set that is unique within an Application Gateway.
  /// [provisioningState] The provisioning state of the rewrite rule set resource.
  /// [rewriteRules] Rewrite rules in the rewrite rule set.
  const ApplicationGatewayRewriteRuleSetResponse({
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.rewriteRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'rewriteRules': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRewriteRuleResponse>, List<Map<String, dynamic>>>(rewriteRules, (value) => pulumi.Input.encodeList<ApplicationGatewayRewriteRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationGatewayRewriteRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleSetResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      rewriteRules: (() { final guardedValue = map['rewriteRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRewriteRuleResponse>(guardedValue, (value) => ApplicationGatewayRewriteRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
