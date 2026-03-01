// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activated_resource_reference_response.dart';
import 'afd_route_cache_configuration_response.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRoute.
class GetRouteResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The caching configuration for this route. To disable caching, do not provide a cacheConfiguration object.
  final AfdRouteCacheConfigurationResponse? cacheConfiguration;
  /// Domains referenced by this endpoint.
  final List<ActivatedResourceReferenceResponse>? customDomains;
  final String deploymentStatus;
  /// Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
  final String? enabledState;
  /// The name of the endpoint which holds the route.
  final String endpointName;
  /// Protocol this rule will use when forwarding traffic to backends.
  final String? forwardingProtocol;
  /// Whether to automatically redirect HTTP traffic to HTTPS traffic. Note that this is a easy way to set up this rule and it will be the first rule that gets executed.
  final String? httpsRedirect;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// whether this route will be linked to the default endpoint domain.
  final String? linkToDefaultDomain;
  /// The name of the resource
  final String name;
  /// A reference to the origin group.
  final ResourceReferenceResponse? originGroup;
  /// A directory path on the origin that AzureFrontDoor can use to retrieve content from, e.g. contoso.cloudapp.net/originpath.
  final String? originPath;
  /// The route patterns of the rule.
  final List<String>? patternsToMatch;
  /// Provisioning status
  final String provisioningState;
  /// rule sets referenced by this endpoint.
  final List<ResourceReferenceResponse>? ruleSets;
  /// List of supported protocols for this route.
  final List<String>? supportedProtocols;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetRouteResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cacheConfiguration] The caching configuration for this route. To disable caching, do not provide a cacheConfiguration object.
  /// [customDomains] Domains referenced by this endpoint.
  /// [deploymentStatus] Required.
  /// [enabledState] Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
  /// [endpointName] The name of the endpoint which holds the route.
  /// [forwardingProtocol] Protocol this rule will use when forwarding traffic to backends.
  /// [httpsRedirect] Whether to automatically redirect HTTP traffic to HTTPS traffic. Note that this is a easy way to set up this rule and it will be the first rule that gets executed.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [linkToDefaultDomain] whether this route will be linked to the default endpoint domain.
  /// [name] The name of the resource
  /// [originGroup] A reference to the origin group.
  /// [originPath] A directory path on the origin that AzureFrontDoor can use to retrieve content from, e.g. contoso.cloudapp.net/originpath.
  /// [patternsToMatch] The route patterns of the rule.
  /// [provisioningState] Provisioning status
  /// [ruleSets] rule sets referenced by this endpoint.
  /// [supportedProtocols] List of supported protocols for this route.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetRouteResult({
    required this.azureApiVersion,
    this.cacheConfiguration,
    this.customDomains,
    required this.deploymentStatus,
    this.enabledState,
    required this.endpointName,
    this.forwardingProtocol,
    this.httpsRedirect,
    required this.id,
    this.linkToDefaultDomain,
    required this.name,
    this.originGroup,
    this.originPath,
    this.patternsToMatch,
    required this.provisioningState,
    this.ruleSets,
    this.supportedProtocols,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cacheConfiguration': ?cacheConfiguration == null ? null : cacheConfiguration!.toMap(),
      'customDomains': ?customDomains == null ? null : pulumi.Input.encodeList<ActivatedResourceReferenceResponse, Map<String, dynamic>>(customDomains!, (value) => value.toMap()),
      'deploymentStatus': deploymentStatus,
      'enabledState': ?enabledState,
      'endpointName': endpointName,
      'forwardingProtocol': ?forwardingProtocol,
      'httpsRedirect': ?httpsRedirect,
      'id': id,
      'linkToDefaultDomain': ?linkToDefaultDomain,
      'name': name,
      'originGroup': ?originGroup == null ? null : originGroup!.toMap(),
      'originPath': ?originPath,
      'patternsToMatch': ?patternsToMatch,
      'provisioningState': provisioningState,
      'ruleSets': ?ruleSets == null ? null : pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(ruleSets!, (value) => value.toMap()),
      'supportedProtocols': ?supportedProtocols,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetRouteResult.fromMap(Map<String, dynamic> map) {
    return GetRouteResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cacheConfiguration: map['cacheConfiguration'] == null ? null : AfdRouteCacheConfigurationResponse.fromMap((map['cacheConfiguration'] as Map).cast<String, dynamic>()),
      customDomains: map['customDomains'] == null ? null : pulumi.Input.decodeList<ActivatedResourceReferenceResponse>(map['customDomains'], (value) => ActivatedResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      deploymentStatus: map['deploymentStatus'] as String,
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      endpointName: map['endpointName'] as String,
      forwardingProtocol: map['forwardingProtocol'] == null ? null : map['forwardingProtocol'] as String,
      httpsRedirect: map['httpsRedirect'] == null ? null : map['httpsRedirect'] as String,
      id: map['id'] as String,
      linkToDefaultDomain: map['linkToDefaultDomain'] == null ? null : map['linkToDefaultDomain'] as String,
      name: map['name'] as String,
      originGroup: map['originGroup'] == null ? null : ResourceReferenceResponse.fromMap((map['originGroup'] as Map).cast<String, dynamic>()),
      originPath: map['originPath'] == null ? null : map['originPath'] as String,
      patternsToMatch: map['patternsToMatch'] == null ? null : (map['patternsToMatch'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      ruleSets: map['ruleSets'] == null ? null : pulumi.Input.decodeList<ResourceReferenceResponse>(map['ruleSets'], (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      supportedProtocols: map['supportedProtocols'] == null ? null : (map['supportedProtocols'] as List).cast<String>(),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

