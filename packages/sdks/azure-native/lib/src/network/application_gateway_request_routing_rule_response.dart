// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Request routing rule of an application gateway.
class ApplicationGatewayRequestRoutingRuleResponse {
  /// Backend address pool resource of the application gateway.
  final pulumi.Input<SubResourceResponse>? backendAddressPool;

  /// Backend http settings resource of the application gateway.
  final pulumi.Input<SubResourceResponse>? backendHttpSettings;

  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// Http listener resource of the application gateway.
  final pulumi.Input<SubResourceResponse>? httpListener;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Load Distribution Policy resource of the application gateway.
  final pulumi.Input<SubResourceResponse>? loadDistributionPolicy;

  /// Name of the request routing rule that is unique within an Application Gateway.
  final pulumi.Input<String>? name;

  /// Priority of the request routing rule.
  final pulumi.Input<int>? priority;

  /// The provisioning state of the request routing rule resource.
  final pulumi.Input<String> provisioningState;

  /// Redirect configuration resource of the application gateway.
  final pulumi.Input<SubResourceResponse>? redirectConfiguration;

  /// Rewrite Rule Set resource in Basic rule of the application gateway.
  final pulumi.Input<SubResourceResponse>? rewriteRuleSet;

  /// Rule type.
  final pulumi.Input<String>? ruleType;

  /// Type of the resource.
  final pulumi.Input<String> type;

  /// URL path map resource of the application gateway.
  final pulumi.Input<SubResourceResponse>? urlPathMap;

  /// Creates a new [ApplicationGatewayRequestRoutingRuleResponse].
  /// [backendAddressPool] Backend address pool resource of the application gateway.
  /// [backendHttpSettings] Backend http settings resource of the application gateway.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [httpListener] Http listener resource of the application gateway.
  /// [id] Resource ID.
  /// [loadDistributionPolicy] Load Distribution Policy resource of the application gateway.
  /// [name] Name of the request routing rule that is unique within an Application Gateway.
  /// [priority] Priority of the request routing rule.
  /// [provisioningState] The provisioning state of the request routing rule resource.
  /// [redirectConfiguration] Redirect configuration resource of the application gateway.
  /// [rewriteRuleSet] Rewrite Rule Set resource in Basic rule of the application gateway.
  /// [ruleType] Rule type.
  /// [type] Type of the resource.
  /// [urlPathMap] URL path map resource of the application gateway.
  ApplicationGatewayRequestRoutingRuleResponse({
    this.backendAddressPool,
    this.backendHttpSettings,
    required this.etag,
    this.httpListener,
    this.id,
    this.loadDistributionPolicy,
    this.name,
    this.priority,
    required this.provisioningState,
    this.redirectConfiguration,
    this.rewriteRuleSet,
    this.ruleType,
    required this.type,
    this.urlPathMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(backendAddressPool, (value) => value.toMap()),
      'backendHttpSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(backendHttpSettings, (value) => value.toMap()),
      'etag': etag,
      'httpListener':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(httpListener, (value) => value.toMap()),
      'id': ?id,
      'loadDistributionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(loadDistributionPolicy, (value) => value.toMap()),
      'name': ?name,
      'priority': ?priority,
      'provisioningState': provisioningState,
      'redirectConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(redirectConfiguration, (value) => value.toMap()),
      'rewriteRuleSet':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(rewriteRuleSet, (value) => value.toMap()),
      'ruleType': ?ruleType,
      'type': type,
      'urlPathMap':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(urlPathMap, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayRequestRoutingRuleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationGatewayRequestRoutingRuleResponse(
      backendAddressPool: (() {
        final guardedValue = map['backendAddressPool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      backendHttpSettings: (() {
        final guardedValue = map['backendHttpSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      httpListener: (() {
        final guardedValue = map['httpListener'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadDistributionPolicy: (() {
        final guardedValue = map['loadDistributionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      redirectConfiguration: (() {
        final guardedValue = map['redirectConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      rewriteRuleSet: (() {
        final guardedValue = map['rewriteRuleSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ruleType: (() {
        final guardedValue = map['ruleType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      urlPathMap: (() {
        final guardedValue = map['urlPathMap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
