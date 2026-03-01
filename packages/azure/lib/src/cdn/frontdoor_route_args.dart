// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_route_cache.dart';

/// {@template pulumi_cdn_frontdoor_route_frontdoor_route_args_doc}
/// The set of arguments for FrontdoorRoute.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_route_frontdoor_route_args_doc}
class FrontdoorRouteArgs {
  /// A `cache` block as defined below.
  ///
  /// > **Note:** To disable caching, do not provide the `cache` block in the configuration file.
  final pulumi.Input<FrontdoorRouteCache>? cache;
  /// The IDs of the Front Door Custom Domains which are associated with this Front Door Route.
  final pulumi.Input<List<String>>? cdnFrontdoorCustomDomainIds;
  /// The resource ID of the Front Door Endpoint where this Front Door Route should exist. Changing this forces a new Front Door Route to be created.
  final pulumi.Input<String> cdnFrontdoorEndpointId;
  /// The resource ID of the Front Door Origin Group where this Front Door Route should be created.
  final pulumi.Input<String> cdnFrontdoorOriginGroupId;
  /// One or more Front Door Origin resource IDs that this Front Door Route will link to.
  final pulumi.Input<List<String>> cdnFrontdoorOriginIds;
  /// A directory path on the Front Door Origin that can be used to retrieve content (e.g. `contoso.cloudapp.net/originpath`).
  final pulumi.Input<String>? cdnFrontdoorOriginPath;
  /// A list of the Front Door Rule Set IDs which should be assigned to this Front Door Route.
  final pulumi.Input<List<String>>? cdnFrontdoorRuleSetIds;
  /// Is this Front Door Route enabled? Possible values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The Protocol that will be use when forwarding traffic to backends. Possible values are `HttpOnly`, `HttpsOnly` or `MatchRequest`. Defaults to `MatchRequest`.
  final pulumi.Input<String>? forwardingProtocol;
  /// Automatically redirect HTTP traffic to HTTPS traffic? Possible values are `true` or `false`. Defaults to `true`.
  ///
  /// > **Note:** The `https_redirect_enabled` rule is the first rule that will be executed.
  final pulumi.Input<bool>? httpsRedirectEnabled;
  /// Should this Front Door Route be linked to the default endpoint? Possible values include `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? linkToDefaultDomain;
  /// The name which should be used for this Front Door Route. Valid values must begin with a letter or number, end with a letter or number and may only contain letters, numbers and hyphens with a maximum length of 90 characters. Changing this forces a new Front Door Route to be created.
  final pulumi.Input<String>? name;
  /// The route patterns of the rule.
  final pulumi.Input<List<String>> patternsToMatches;
  /// One or more Protocols supported by this Front Door Route. Possible values are `Http` or `Https`.
  ///
  /// > **Note:** If `https_redirect_enabled` is set to `true` the `supported_protocols` field must contain both `Http` and `Https` values.
  final pulumi.Input<List<String>> supportedProtocols;

  /// Creates a new [FrontdoorRouteArgs].
  /// [cache] A `cache` block as defined below.
  /// [cdnFrontdoorCustomDomainIds] The IDs of the Front Door Custom Domains which are associated with this Front Door Route.
  /// [cdnFrontdoorEndpointId] The resource ID of the Front Door Endpoint where this Front Door Route should exist. Changing this forces a new Front Door Route to be created.
  /// [cdnFrontdoorOriginGroupId] The resource ID of the Front Door Origin Group where this Front Door Route should be created.
  /// [cdnFrontdoorOriginIds] One or more Front Door Origin resource IDs that this Front Door Route will link to.
  /// [cdnFrontdoorOriginPath] A directory path on the Front Door Origin that can be used to retrieve content (e.g. `contoso.cloudapp.net/originpath`).
  /// [cdnFrontdoorRuleSetIds] A list of the Front Door Rule Set IDs which should be assigned to this Front Door Route.
  /// [enabled] Is this Front Door Route enabled? Possible values are `true` or `false`. Defaults to `true`.
  /// [forwardingProtocol] The Protocol that will be use when forwarding traffic to backends. Possible values are `HttpOnly`, `HttpsOnly` or `MatchRequest`. Defaults to `MatchRequest`.
  /// [httpsRedirectEnabled] Automatically redirect HTTP traffic to HTTPS traffic? Possible values are `true` or `false`. Defaults to `true`.
  /// [linkToDefaultDomain] Should this Front Door Route be linked to the default endpoint? Possible values include `true` or `false`. Defaults to `true`.
  /// [name] The name which should be used for this Front Door Route. Valid values must begin with a letter or number, end with a letter or number and may only contain letters, numbers and hyphens with a maximum length of 90 characters. Changing this forces a new Front Door Route to be created.
  /// [patternsToMatches] The route patterns of the rule.
  /// [supportedProtocols] One or more Protocols supported by this Front Door Route. Possible values are `Http` or `Https`.
  FrontdoorRouteArgs({
    FrontdoorRouteCache? cache,
    List<String>? cdnFrontdoorCustomDomainIds,
    required String cdnFrontdoorEndpointId,
    required String cdnFrontdoorOriginGroupId,
    required List<String> cdnFrontdoorOriginIds,
    String? cdnFrontdoorOriginPath,
    List<String>? cdnFrontdoorRuleSetIds,
    bool? enabled,
    String? forwardingProtocol,
    bool? httpsRedirectEnabled,
    bool? linkToDefaultDomain,
    String? name,
    required List<String> patternsToMatches,
    required List<String> supportedProtocols,
  }) :
      cache = pulumi.Input.asOptionalInput<FrontdoorRouteCache>(cache),
      cdnFrontdoorCustomDomainIds = pulumi.Input.asOptionalInput<List<String>>(cdnFrontdoorCustomDomainIds),
      cdnFrontdoorEndpointId = pulumi.Input.asInput<String>(cdnFrontdoorEndpointId),
      cdnFrontdoorOriginGroupId = pulumi.Input.asInput<String>(cdnFrontdoorOriginGroupId),
      cdnFrontdoorOriginIds = pulumi.Input.asInput<List<String>>(cdnFrontdoorOriginIds),
      cdnFrontdoorOriginPath = pulumi.Input.asOptionalInput<String>(cdnFrontdoorOriginPath),
      cdnFrontdoorRuleSetIds = pulumi.Input.asOptionalInput<List<String>>(cdnFrontdoorRuleSetIds),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      forwardingProtocol = pulumi.Input.asOptionalInput<String>(forwardingProtocol),
      httpsRedirectEnabled = pulumi.Input.asOptionalInput<bool>(httpsRedirectEnabled),
      linkToDefaultDomain = pulumi.Input.asOptionalInput<bool>(linkToDefaultDomain),
      name = pulumi.Input.asOptionalInput<String>(name),
      patternsToMatches = pulumi.Input.asInput<List<String>>(patternsToMatches),
      supportedProtocols = pulumi.Input.asInput<List<String>>(supportedProtocols);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?pulumi.Input.mapOptionalInputValue<FrontdoorRouteCache, Map<String, dynamic>>(cache, (value) => value.toMap()),
      'cdnFrontdoorCustomDomainIds': ?cdnFrontdoorCustomDomainIds,
      'cdnFrontdoorEndpointId': cdnFrontdoorEndpointId,
      'cdnFrontdoorOriginGroupId': cdnFrontdoorOriginGroupId,
      'cdnFrontdoorOriginIds': cdnFrontdoorOriginIds,
      'cdnFrontdoorOriginPath': ?cdnFrontdoorOriginPath,
      'cdnFrontdoorRuleSetIds': ?cdnFrontdoorRuleSetIds,
      'enabled': ?enabled,
      'forwardingProtocol': ?forwardingProtocol,
      'httpsRedirectEnabled': ?httpsRedirectEnabled,
      'linkToDefaultDomain': ?linkToDefaultDomain,
      'name': ?name,
      'patternsToMatches': patternsToMatches,
      'supportedProtocols': supportedProtocols,
    };
  }

  factory FrontdoorRouteArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorRouteArgs(
      cache: map['cache'] == null ? null : FrontdoorRouteCache.fromMap((map['cache'] as Map).cast<String, dynamic>()),
      cdnFrontdoorCustomDomainIds: map['cdnFrontdoorCustomDomainIds'] == null ? null : (map['cdnFrontdoorCustomDomainIds'] as List).cast<String>(),
      cdnFrontdoorEndpointId: map['cdnFrontdoorEndpointId'] as String,
      cdnFrontdoorOriginGroupId: map['cdnFrontdoorOriginGroupId'] as String,
      cdnFrontdoorOriginIds: (map['cdnFrontdoorOriginIds'] as List).cast<String>(),
      cdnFrontdoorOriginPath: map['cdnFrontdoorOriginPath'] == null ? null : map['cdnFrontdoorOriginPath'] as String,
      cdnFrontdoorRuleSetIds: map['cdnFrontdoorRuleSetIds'] == null ? null : (map['cdnFrontdoorRuleSetIds'] as List).cast<String>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      forwardingProtocol: map['forwardingProtocol'] == null ? null : map['forwardingProtocol'] as String,
      httpsRedirectEnabled: map['httpsRedirectEnabled'] == null ? null : map['httpsRedirectEnabled'] as bool,
      linkToDefaultDomain: map['linkToDefaultDomain'] == null ? null : map['linkToDefaultDomain'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      patternsToMatches: (map['patternsToMatches'] as List).cast<String>(),
      supportedProtocols: (map['supportedProtocols'] as List).cast<String>(),
    );
  }
}

