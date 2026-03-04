// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDnsForwardingRuleset.
class GetDnsForwardingRulesetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The reference to the DNS resolver outbound endpoints that are used to route DNS queries matching the forwarding rules in the ruleset to the target DNS servers.
  final List<SubResourceResponse> dnsResolverOutboundEndpoints;

  /// ETag of the DNS forwarding ruleset.
  final String etag;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// The current provisioning state of the DNS forwarding ruleset. This is a read-only property and any attempt to set this value will be ignored.
  final String provisioningState;

  /// The resourceGuid for the DNS forwarding ruleset.
  final String resourceGuid;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDnsForwardingRulesetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dnsResolverOutboundEndpoints] The reference to the DNS resolver outbound endpoints that are used to route DNS queries matching the forwarding rules in the ruleset to the target DNS servers.
  /// [etag] ETag of the DNS forwarding ruleset.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The current provisioning state of the DNS forwarding ruleset. This is a read-only property and any attempt to set this value will be ignored.
  /// [resourceGuid] The resourceGuid for the DNS forwarding ruleset.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDnsForwardingRulesetResult({
    required this.azureApiVersion,
    required this.dnsResolverOutboundEndpoints,
    required this.etag,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dnsResolverOutboundEndpoints':
          pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(
            dnsResolverOutboundEndpoints,
            (value) => value.toMap(),
          ),
      'etag': etag,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDnsForwardingRulesetResult.fromMap(Map<String, dynamic> map) {
    return GetDnsForwardingRulesetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dnsResolverOutboundEndpoints:
          pulumi.Input.decodeList<SubResourceResponse>(
            map['dnsResolverOutboundEndpoints']!,
            (value) => SubResourceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
