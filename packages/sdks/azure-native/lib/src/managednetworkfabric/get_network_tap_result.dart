// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_tap_properties_response_destinations.dart';
import 'system_data_response.dart';

/// Result data returned by getNetworkTap.
class GetNetworkTapResult {
  /// Administrative state of the resource. Example -Enabled/Disabled
  final String? administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets the configurations state of the resource.
  final String? configurationState;
  /// List of destinations to send the filter traffic.
  final List<NetworkTapPropertiesResponseDestinations>? destinations;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// ARM resource ID of the Network Packet Broker.
  final String? networkPacketBrokerId;
  /// Polling type.
  final String? pollingType;
  /// Provides you the latest status of the NFC service, whether it is Accepted, updating, Succeeded or Failed. During this process, the states keep changing based on the status of Network Tap provisioning.
  final String? provisioningState;
  /// Source Tap Rule Id. ARM Resource ID of the Network Tap Rule.
  final String? sourceTapRuleId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetNetworkTapResult].
  /// [administrativeState] Administrative state of the resource. Example -Enabled/Disabled
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Gets the configurations state of the resource.
  /// [destinations] List of destinations to send the filter traffic.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkPacketBrokerId] ARM resource ID of the Network Packet Broker.
  /// [pollingType] Polling type.
  /// [provisioningState] Provides you the latest status of the NFC service, whether it is Accepted, updating, Succeeded or Failed. During this process, the states keep changing based on the status of Network Tap provisioning.
  /// [sourceTapRuleId] Source Tap Rule Id. ARM Resource ID of the Network Tap Rule.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetNetworkTapResult({
    this.administrativeState,
    this.annotation,
    this.azureApiVersion,
    this.configurationState,
    this.destinations,
    this.id,
    this.location,
    this.name,
    this.networkPacketBrokerId,
    String? pollingType,
    this.provisioningState,
    this.sourceTapRuleId,
    this.systemData,
    this.tags,
    this.type,
  }) : pollingType = pollingType ?? 'Pull';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': ?administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': ?azureApiVersion,
      'configurationState': ?configurationState,
      'destinations': ?(() { final guardedValue = destinations; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkTapPropertiesResponseDestinations, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkPacketBrokerId': ?networkPacketBrokerId,
      'pollingType': ?pollingType,
      'provisioningState': ?provisioningState,
      'sourceTapRuleId': ?sourceTapRuleId,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetNetworkTapResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkTapResult(
      administrativeState: (() { final guardedValue = map['administrativeState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationState: (() { final guardedValue = map['configurationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkTapPropertiesResponseDestinations>(guardedValue, (value) => NetworkTapPropertiesResponseDestinations.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkPacketBrokerId: (() { final guardedValue = map['networkPacketBrokerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pollingType: (() { final guardedValue = map['pollingType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceTapRuleId: (() { final guardedValue = map['sourceTapRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
