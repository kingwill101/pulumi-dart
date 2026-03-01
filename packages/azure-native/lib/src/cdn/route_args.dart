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
  RouteArgs({
    AfdRouteCacheConfiguration? cacheConfiguration,
    List<ActivatedResourceReference>? customDomains,
    String? enabledState,
    required String endpointName,
    String? forwardingProtocol,
    String? httpsRedirect,
    String? linkToDefaultDomain,
    ResourceReference? originGroup,
    String? originPath,
    List<String>? patternsToMatch,
    required String profileName,
    required String resourceGroupName,
    String? routeName,
    List<ResourceReference>? ruleSets,
    List<String>? supportedProtocols,
  }) :
      cacheConfiguration = pulumi.Input.asOptionalInput<AfdRouteCacheConfiguration>(cacheConfiguration),
      customDomains = pulumi.Input.asOptionalInput<List<ActivatedResourceReference>>(customDomains),
      enabledState = pulumi.Input.asOptionalInput<String>(enabledState),
      endpointName = pulumi.Input.asInput<String>(endpointName),
      forwardingProtocol = pulumi.Input.asOptionalInput<String>(forwardingProtocol),
      httpsRedirect = pulumi.Input.asOptionalInput<String>(httpsRedirect),
      linkToDefaultDomain = pulumi.Input.asOptionalInput<String>(linkToDefaultDomain),
      originGroup = pulumi.Input.asOptionalInput<ResourceReference>(originGroup),
      originPath = pulumi.Input.asOptionalInput<String>(originPath),
      patternsToMatch = pulumi.Input.asOptionalInput<List<String>>(patternsToMatch),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeName = pulumi.Input.asOptionalInput<String>(routeName),
      ruleSets = pulumi.Input.asOptionalInput<List<ResourceReference>>(ruleSets),
      supportedProtocols = pulumi.Input.asOptionalInput<List<String>>(supportedProtocols);

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
      cacheConfiguration: map['cacheConfiguration'] == null ? null : AfdRouteCacheConfiguration.fromMap((map['cacheConfiguration'] as Map).cast<String, dynamic>()),
      customDomains: map['customDomains'] == null ? null : pulumi.Input.decodeList<ActivatedResourceReference>(map['customDomains'], (value) => ActivatedResourceReference.fromMap((value as Map).cast<String, dynamic>())),
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      endpointName: map['endpointName'] as String,
      forwardingProtocol: map['forwardingProtocol'] == null ? null : map['forwardingProtocol'] as String,
      httpsRedirect: map['httpsRedirect'] == null ? null : map['httpsRedirect'] as String,
      linkToDefaultDomain: map['linkToDefaultDomain'] == null ? null : map['linkToDefaultDomain'] as String,
      originGroup: map['originGroup'] == null ? null : ResourceReference.fromMap((map['originGroup'] as Map).cast<String, dynamic>()),
      originPath: map['originPath'] == null ? null : map['originPath'] as String,
      patternsToMatch: map['patternsToMatch'] == null ? null : (map['patternsToMatch'] as List).cast<String>(),
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routeName: map['routeName'] == null ? null : map['routeName'] as String,
      ruleSets: map['ruleSets'] == null ? null : pulumi.Input.decodeList<ResourceReference>(map['ruleSets'], (value) => ResourceReference.fromMap((value as Map).cast<String, dynamic>())),
      supportedProtocols: map['supportedProtocols'] == null ? null : (map['supportedProtocols'] as List).cast<String>(),
    );
  }
}

