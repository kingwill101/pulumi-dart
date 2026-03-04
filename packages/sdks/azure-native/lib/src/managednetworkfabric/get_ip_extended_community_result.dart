// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_extended_community_rule_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIpExtendedCommunity.
class GetIpExtendedCommunityResult {
  /// Administrative state of the resource.
  final String administrativeState;

  /// Switch configuration description.
  final String? annotation;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Configuration state of the resource.
  final String configurationState;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// List of IP Extended Community Rules.
  final List<IpExtendedCommunityRuleResponse> ipExtendedCommunityRules;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// Provisioning state of the resource.
  final String provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetIpExtendedCommunityResult].
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [ipExtendedCommunityRules] List of IP Extended Community Rules.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetIpExtendedCommunityResult({
    required this.administrativeState,
    this.annotation,
    required this.azureApiVersion,
    required this.configurationState,
    required this.id,
    required this.ipExtendedCommunityRules,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'configurationState': configurationState,
      'id': id,
      'ipExtendedCommunityRules':
          pulumi.Input.encodeList<
            IpExtendedCommunityRuleResponse,
            Map<String, dynamic>
          >(ipExtendedCommunityRules, (value) => value.toMap()),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIpExtendedCommunityResult.fromMap(Map<String, dynamic> map) {
    return GetIpExtendedCommunityResult(
      administrativeState: map['administrativeState'] as String,
      annotation: (() {
        final guardedValue = map['annotation'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      configurationState: map['configurationState'] as String,
      id: map['id'] as String,
      ipExtendedCommunityRules:
          pulumi.Input.decodeList<IpExtendedCommunityRuleResponse>(
            map['ipExtendedCommunityRules']!,
            (value) => IpExtendedCommunityRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
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
