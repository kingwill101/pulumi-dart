// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activated_resource_reference.dart';
import 'afd_route_cache_configuration.dart';
import 'resource_reference.dart';

/// {@template pulumi_cdn_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_cdn_route_args_doc}
class RouteArgs {
  /// The caching configuration for this route. To disable caching, do not provide a cacheConfiguration object.
  final pulumi.Input<AfdRouteCacheConfiguration>? cacheConfiguration;
  /// Domains referenced by this endpoint.
  final pulumi.Input<List<ActivatedResourceReference>>? customDomains;
  /// Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
  final pulumi.Input<String>? enabledState;
  /// Name of the endpoint under the profile which is unique globally.
  final pulumi.Input<String> endpointName;
  /// Protocol this rule will use when forwarding traffic to backends.
  final pulumi.Input<String>? forwardingProtocol;
  /// Whether to automatically redirect HTTP traffic to HTTPS traffic. Note that this is a easy way to set up this rule and it will be the first rule that gets executed.
  final pulumi.Input<String>? httpsRedirect;
  /// whether this route will be linked to the default endpoint domain.
  final pulumi.Input<String>? linkToDefaultDomain;
  /// A reference to the origin group.
  final pulumi.Input<ResourceReference>? originGroup;
  /// A directory path on the origin that AzureFrontDoor can use to retrieve content from, e.g. contoso.cloudapp.net/originpath.
  final pulumi.Input<String>? originPath;
  /// The route patterns of the rule.
  final pulumi.Input<List<String>>? patternsToMatch;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the routing rule.
  final pulumi.Input<String>? routeName;
  /// rule sets referenced by this endpoint.
  final pulumi.Input<List<ResourceReference>>? ruleSets;
  /// List of supported protocols for this route.
  final pulumi.Input<List<String>>? supportedProtocols;

  /// Creates a new [RouteArgs].
  /// [cacheConfiguration] The caching configuration for this route. To disable caching, do not provide a cacheConfiguration object.
  /// [customDomains] Domains referenced by this endpoint.
  /// [enabledState] Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
  /// [endpointName] Name of the endpoint under the profile which is unique globally.
  /// [forwardingProtocol] Protocol this rule will use when forwarding traffic to backends.
  /// [httpsRedirect] Whether to automatically redirect HTTP traffic to HTTPS traffic. Note that this is a easy way to set up this rule and it will be the first rule that gets executed.
  /// [linkToDefaultDomain] whether this route will be linked to the default endpoint domain.
  /// [originGroup] A reference to the origin group.
  /// [originPath] A directory path on the origin that AzureFrontDoor can use to retrieve content from, e.g. contoso.cloudapp.net/originpath.
  /// [patternsToMatch] The route patterns of the rule.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [routeName] Name of the routing rule.
  /// [ruleSets] rule sets referenced by this endpoint.
  /// [supportedProtocols] List of supported protocols for this route.
  const RouteArgs({
    this.cacheConfiguration,
    this.customDomains,
    this.enabledState,
    required this.endpointName,
    this.forwardingProtocol,
    this.httpsRedirect,
    this.linkToDefaultDomain,
    this.originGroup,
    this.originPath,
    this.patternsToMatch,
    required this.profileName,
    required this.resourceGroupName,
    this.routeName,
    this.ruleSets,
    this.supportedProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheConfiguration': ?pulumi.Input.mapOptionalInputValue<AfdRouteCacheConfiguration, Map<String, dynamic>>(cacheConfiguration, (value) => value.toMap()),
      'customDomains': ?pulumi.Input.mapOptionalInputValue<List<ActivatedResourceReference>, List<Map<String, dynamic>>>(customDomains, (value) => pulumi.Input.encodeList<ActivatedResourceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabledState': ?enabledState,
      'endpointName': endpointName,
      'forwardingProtocol': ?forwardingProtocol,
      'httpsRedirect': ?httpsRedirect,
      'linkToDefaultDomain': ?linkToDefaultDomain,
      'originGroup': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(originGroup, (value) => value.toMap()),
      'originPath': ?originPath,
      'patternsToMatch': ?patternsToMatch,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'routeName': ?routeName,
      'ruleSets': ?pulumi.Input.mapOptionalInputValue<List<ResourceReference>, List<Map<String, dynamic>>>(ruleSets, (value) => pulumi.Input.encodeList<ResourceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportedProtocols': ?supportedProtocols,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      cacheConfiguration: (() { final guardedValue = map['cacheConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AfdRouteCacheConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customDomains: (() { final guardedValue = map['customDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivatedResourceReference>(guardedValue, (value) => ActivatedResourceReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      forwardingProtocol: (() { final guardedValue = map['forwardingProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsRedirect: (() { final guardedValue = map['httpsRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkToDefaultDomain: (() { final guardedValue = map['linkToDefaultDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originGroup: (() { final guardedValue = map['originGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      originPath: (() { final guardedValue = map['originPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternsToMatch: (() { final guardedValue = map['patternsToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeName: (() { final guardedValue = map['routeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleSets: (() { final guardedValue = map['ruleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceReference>(guardedValue, (value) => ResourceReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      supportedProtocols: (() { final guardedValue = map['supportedProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

