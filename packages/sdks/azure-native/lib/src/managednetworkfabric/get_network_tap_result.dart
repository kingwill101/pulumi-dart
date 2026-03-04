// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_tap_properties_response_destinations.dart';
import 'system_data_response.dart';

/// Result data returned by getNetworkTap.
class GetNetworkTapResult {
  /// Administrative state of the resource. Example -Enabled/Disabled
  final String administrativeState;

  /// Switch configuration description.
  final String? annotation;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Gets the configurations state of the resource.
  final String configurationState;

  /// List of destinations to send the filter traffic.
  final List<NetworkTapPropertiesResponseDestinations> destinations;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// ARM resource ID of the Network Packet Broker.
  final String networkPacketBrokerId;

  /// Polling type.
  final String? pollingType;

  /// Provides you the latest status of the NFC service, whether it is Accepted, updating, Succeeded or Failed. During this process, the states keep changing based on the status of Network Tap provisioning.
  final String provisioningState;

  /// Source Tap Rule Id. ARM Resource ID of the Network Tap Rule.
  final String sourceTapRuleId;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
    required this.administrativeState,
    this.annotation,
    required this.azureApiVersion,
    required this.configurationState,
    required this.destinations,
    required this.id,
    required this.location,
    required this.name,
    required this.networkPacketBrokerId,
    this.pollingType,
    required this.provisioningState,
    required this.sourceTapRuleId,
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
      'destinations':
          pulumi.Input.encodeList<
            NetworkTapPropertiesResponseDestinations,
            Map<String, dynamic>
          >(destinations, (value) => value.toMap()),
      'id': id,
      'location': location,
      'name': name,
      'networkPacketBrokerId': networkPacketBrokerId,
      'pollingType': ?pollingType,
      'provisioningState': provisioningState,
      'sourceTapRuleId': sourceTapRuleId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNetworkTapResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkTapResult(
      administrativeState: map['administrativeState'] as String,
      annotation: (() {
        final guardedValue = map['annotation'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      configurationState: map['configurationState'] as String,
      destinations:
          pulumi.Input.decodeList<NetworkTapPropertiesResponseDestinations>(
            map['destinations']!,
            (value) => NetworkTapPropertiesResponseDestinations.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkPacketBrokerId: map['networkPacketBrokerId'] as String,
      pollingType: (() {
        final guardedValue = map['pollingType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      sourceTapRuleId: map['sourceTapRuleId'] as String,
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
