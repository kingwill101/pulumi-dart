// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_rewrite_rule_response.dart';

/// Rewrite rule set of an application gateway.
class ApplicationGatewayRewriteRuleSetResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the rewrite rule set that is unique within an Application Gateway.
  final String? name;
  /// The provisioning state of the rewrite rule set resource.
  final String provisioningState;
  /// Rewrite rules in the rewrite rule set.
  final List<ApplicationGatewayRewriteRuleResponse>? rewriteRules;

  /// Creates a new [ApplicationGatewayRewriteRuleSetResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the rewrite rule set that is unique within an Application Gateway.
  /// [provisioningState] The provisioning state of the rewrite rule set resource.
  /// [rewriteRules] Rewrite rules in the rewrite rule set.
  ApplicationGatewayRewriteRuleSetResponse({
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
      'rewriteRules': ?rewriteRules == null ? null : pulumi.Input.encodeList<ApplicationGatewayRewriteRuleResponse, Map<String, dynamic>>(rewriteRules!, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayRewriteRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleSetResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      rewriteRules: map['rewriteRules'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayRewriteRuleResponse>(map['rewriteRules'], (value) => ApplicationGatewayRewriteRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

